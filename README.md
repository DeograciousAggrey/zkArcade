# zkArcade <!-- omit in toc -->

![zkGamesRepoImage](https://user-images.githubusercontent.com/68210234/185812708-ae6d72d1-34f5-4fb0-9cba-bd3a1f75f2fa.png)

zkArcade is a platform that allows users to play zk (zero knowledge) games and mint an NFT as proof that they have won.


The project is currently on [Arbitrum Sepolia](https://sepolia.arbiscan.io/) and the frontend is hosted on [Vercel](https://github.com/vercel/vercel).

ZkArcade has 3 games so far: Futoshiki, Skyscrapers and Sudoku.

## ZkArcade Link:

<https://zk-arcade-omega.vercel.app/>


## ZkArcade Demo video:

<https://youtu.be/xzd4vLtB8Lc>

## Contract Deployment Links in the mumbai explorer;

SudokuVerifier Contract deployed to: <https://sepolia.arbiscan.io/address/0x1A6e8f72f309CFA7B7Aca231E65FA1e24D4B8fB0>

Sudoku Contract deployed to: <https://sepolia.arbiscan.io/address/0xE36bE621c0792A2a64d5BE267EA09A4C266CCeb1>

FutoshikiVerifier deployed to: <https://sepolia.arbiscan.io/address/0x98aBC61FA299693246C282C4D15A0401C239F606>

Futoshiki deployed to: <https://sepolia.arbiscan.io/address/0xB0a7f823688BdB6125780D1Ebd2940Bf32F14FD6>

SkyscrapersVerifier Contract deployed to: <https://sepolia.arbiscan.io/address/0xD0276C2f1353157A562400309560C9cdCBA47212>

Skyscrapers Contract deployed to: <https://sepolia.arbiscan.io/address/0x164ae108DC16Eb8365C57b2339b3831800132B6C>






## Table of Contents <!-- omit in toc -->

- [Project Structure](#project-structure)
  - [circuits](#circuits)
  - [contracts](#contracts)
  - [zkgames-ui](#zkgames-ui)
- [Zero Knowledge Structure](#zero-knowledge-structure)
- [Run Locally](#run-locally)
  - [Clone the Repository](#clone-the-repository)
  - [Run circuits](#run-circuits)
  - [Run contracts](#run-contracts)
  - [Run zkgames-ui](#run-zkgames-ui)
- [Steps to Add a New Game](#steps-to-add-a-new-game)
- [Images of the zkArcade Application](#images-of-the-zkarcade-application)
  - [Initial page](#initial-page)
  - [Futoshiki Game](#futoshiki-game)
  - [Skyscrapers Game](#skyscrapers-game)
  - [Sudoku Game](#sudoku-game)

## Project Structure

The project has three main folders:

- circuits
- contracts
- zkgames-ui

### circuits

The [circuits folder](/circuits/) contains all the circuits used in zkArcade.

To learn more about the zkArcade circuits, read the [README file](/circuits/README.md) inside the `circuits` folder.

### contracts

The [contracts folder](/contracts/) contains all the smart contracts used in zkArcade.

To learn more about the zkArcade smart contracts, read the [README file](/contracts/README.md) inside the `contracts` folder.

### zkgames-ui

The [zkgames-ui folder](/zkgames-ui/) contains the zkArcade frontend.

To learn more about the zkArcade frontend, read the [README file](/zkgames-ui/README.md) in the `zkgames-ui` folder.

## Zero Knowledge Structure

The following graphic shows the structure of the most important zero knowledge elements of the zkGames project.

```text
├── circuits
│   ├── futoshiki
│   │   ├── futoshiki.circom
│   ├── skyscrapers
│   │   ├── skyscrapers.circom
│   ├── sudoku
│   │   ├── sudoku.circom
├── contracts
│   ├── contracts
│   │   ├── Futoshiki
│   │   │   ├── Futoshiki.sol
│   │   │   ├── verifier.sol
│   │   ├── Skyscrapers
│   │   │   ├── Skyscrapers.sol
│   │   │   ├── verifier.sol
│   │   ├── Sudoku
│   │   │   ├── Sudoku.sol
│   │   │   ├── verifier.sol
├── zkgames-ui
│   ├── public
│   │   ├── zkproof
│   │   │   ├── futoshiki
│   │   │   │   ├── futoshiki.wasm
│   │   │   │   ├── futoshiki_0001.zkey
│   │   │   ├── skyscrapers
│   │   │   │   ├── skyscrapers.wasm
│   │   │   │   ├── skyscrapers_0001.zkey
│   │   │   ├── sudoku
│   │   │   │   ├── sudoku.wasm
│   │   │   │   ├── sudoku_0001.zkey
│   ├── zkproof
│   │   ├── futoshiki
│   │   │   ├── snarkjsFutoshiki.js
│   │   ├── skyscrapers
│   │   │   ├── snarkjsSkyscrapers.js
│   │   ├── sudoku
│   │   │   ├── snarkjsSudoku.js
│   │   ├── snarkjsZkproof.js
```

## Run Locally

### Clone the Repository

```bash
git clone https://github.com/DeograciousAggrey/zkArcade
```

### Run circuits

To run cicuits, go inside the `circuits` folder:

```bash
cd circuits
```

Then, follow the intructions in the [README file](/circuits/README.md) in the `circuits` folder.

### Run contracts

To run contracts, go inside the `contracts` folder:

```bash
cd contracts
```

Then, follow the intructions in the [README file](/contracts/README.md) in the `contracts` folder.

### Run zkgames-ui

To run the frontend, go inside the `zkgames-ui` folder:

```bash
cd zkgames-ui
```

Then, follow the intructions in the [README file](/zkgames-ui/README.md) in the `zkgames-ui` folder.

## Steps to Add a New Game

Steps to follow to add a new game (in each step you can check how is done with the other games):

1\. **Create the required circom circuits:**

- Inside the circuits folder, create a new folder and inside the new folder, create the necessary circom circuits.
- Compile the circuit and generate the `wasm`, `zkey` and `verifier.sol` files using the `execute.sh` file.

2\. **Create the necessary smart contracts:**

- Inside the `contracts/contracts` folder, create a new folder with the necessary smart contracts. Add here the verifier.sol generated before using snarkjs.
- Change the solidity version to `^0.8.4` (it is the version used in the other smart contracts) and the contract name (to `<gameName>Verifier`) in `verifier.sol`.
- Test the functionalities of the new smart contracts in `scripts/run.js`.
- Update the `contracts/scripts/deploy.js` file and deploy smart contracts.

3\. **Create the user interface of the game:**

- Inside `zkgames-ui/components`, add a new folder to create all the components needed to render the game.
- Add a new page inside `zkgames-ui/pages` to access the new game.
- Create the css of that page inside `zkgames-ui/styles`, called `<GameName>.module.css`.
- Add an image inside `zkgames-ui/assets` to represent the game (width: 700 pixels and height: 700 pixels).
- Inside `zkgames-ui/public/zkproof` add a new folder with the wasm and zkey elements generated before.
- Inside `zkgames-ui/utils/abiFiles`, add a new folder with the `json` abi file of the smart contract.
- In `zkgames-ui/utils/contractaddress.json`, add the new contract address.
- In `zkgames-ui/zkproof`, create a new folder and inside the new folder create a new file called `snarkjs<NewGame>.js` with the code to export the call data.
- In `zkgames-ui/components/gameList.js` add the game as follows:

```javascript
 {
   nameGame: "<nameGame>",
   imageGame: nameGameImage,
   urlGame: "/<nameGame>",
 }
```

## Images of the ZkArcade Application

### Initial page

![InitialPage](https://github.com/user-attachments/assets/9c4288ab-2072-452e-b146-a06d38dbdbcc)

### Futoshiki Game

![FutoshikiGame](https://github.com/user-attachments/assets/e1bb21aa-3bde-472e-925b-e849bada228c)

### Skyscrapers Game

![SkyscrapersGame](https://github.com/user-attachments/assets/b21d707a-e9e6-499b-9f64-c37928fa0d25)

### Sudoku Game

![SudokuGame](https://github.com/user-attachments/assets/80f11bcb-d71c-486d-96e9-ae8c63774449)
