This folder is for testing the decentralized network between two government agencies in the Philippines: COA and DWPH

Execute these commands in the same directory as this README file

Helper Commands/Scripts
====================================
sudo docker-compose ps
sudo docker-compose down
sudo ./clean.sh

Step 1   Setup the network artefacts
====================================

# 1 Launch and login to tools container
sudo docker-compose up -d tools
sudo docker exec -it tools /bin/bash

# 2 Generate the crypto matrial
cd /var/hyperledger/config
cryptogen generate --config=./crypto-config.yaml

# 3 Generate the network artefacts
configtxgen -outputBlock  ./orderer/philgovgenesis.block -channelID philgovchannel  -profile PhilGovOrdererGenesis

configtxgen -outputCreateChannelTx  ./channel/philgovchannel.tx -channelID philgovchannel  -profile PhilGovChannel

# 4 Exit and shutdown tools container
exit
sudo docker-compose down