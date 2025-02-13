const snarkjs = require("snarkjs");
const fs = require("fs");
const ethers = require("ethers");

const {
    zkVerifySession,
    Library,
    CurveType,
    ZkVerifyEvents,
    VerifyTransactionInfo,
    VKRegistrationTransactionInfo
} = require("zkverifyjs");

require("dotenv").config({ path: "./.env" });

async function main() {
    const { ZK_RPC_URL, SEED_PHRASE } = process.env;

    const proof = JSON.parse(fs.readFileSync("./proof.json"));
    const publicSignals = JSON.parse(fs.readFileSync("./public.json"));
    const vk = JSON.parse(fs.readFileSync("./verification_key.json"));

    const session = await zkVerifySession.start().Custom(ZK_RPC_URL).withAccount(SEED_PHRASE);

    const { events, transactionResult } = await session
        .verify()
        .groth16(Library.snarkjs, CurveType.bn128)
        .waitForPublishedAttestation()
        .execute(
            {
                proofData: {
                    vk,
                    proof,
                    publicSignals,
                },
            }
        );

    // Listen for the 'includedInBlock' event
    events.on(ZkVerifyEvents.IncludedInBlock, ({ txHash }) => {
        console.log(`Transaction accepted in zkVerify, tx-hash: ${txHash}`);
    });

    // Listen for the 'finalized' event
    events.on(ZkVerifyEvents.Finalized, ({ blockHash }) => {
        console.log(`Transaction finalized in zkVerify, block-hash: ${blockHash}`);
    });

    // Handle errors during the transaction process
    events.on("error", (error) => {
        console.error("An error occurred during the transaction:", error);
    });



    let attestationId, leafDigest;
    try {
        ({ attestationId, leafDigest } = await transactionResult);
        console.log(`Attestation published on zkVerify`);
        console.log(`\tattestationId: ${attestationId}`);
        console.log(`\tleafDigest: ${leafDigest}`);
    } catch (error) {
        console.error("Transaction failed:", error);
    }

    let merkleProof, numberOfLeaves, leafIndex;
    try {
        const proofDetails = await session.poe(attestationId, leafDigest);
        ({ proof: merkleProof, numberOfLeaves, leafIndex } = await proofDetails);
        console.log(`Merkle proof details`);
        console.log(`\tmerkleProof: ${merkleProof}`);
        console.log(`\tnumberOfLeaves: ${numberOfLeaves}`);
        console.log(`\tleafIndex: ${leafIndex}`);
    } catch (error) {
        console.error("RPC failed:", error);
    }



























}