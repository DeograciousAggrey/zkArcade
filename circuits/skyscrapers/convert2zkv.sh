#clone the snarkjs2zkv repository
git clone https://github.com/HorizenLabs/snarkjs2zkv.git


cd snarkjs2zkv

# Remove Git tracking so it's treated as a normal folder
rm -rf .git

npm install

#run the command with the path to the proof.json file
node snarkjs2zkv.js convert-proof /home/roman/zkGames/circuits/skyscrapers/proof.json -o proof_zkv.json

#copy the proof_zkv.json file to the circuits/skyscrapers folder
cp proof_zkv.json ../

#run the command with the path to the verification_key.json file
node snarkjs2zkv.js convert-vk /home/roman/zkGames/circuits/skyscrapers/verification_key.json -o verification_key_zkv.json

#copy the verification_key_zkv.json file to the circuits/skyscrapers folder

cp verification_key_zkv.json ../

#run the command with the path to the public.json file
node snarkjs2zkv.js convert-public /home/roman/zkGames/circuits/skyscrapers/public.json -o public_zkv.json -c bn128

#copy the public_zkv.json file to the circuits/skyscrapers folder
cp public_zkv.json ../

