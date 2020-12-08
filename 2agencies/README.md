# About

This folder is for testing the decentralized network between two government agencies in the Philippines: COA and DWPH

Execute these commands in the same directory as this README file to test out the network locally

# Helper Commands/Scripts
sudo docker-compose ps

sudo ./clean.sh
sudo docker-compose down -v
docker volume prune -f

# Step 1   Setup the network artefacts

## 1 Launch and login to tools container
sudo docker-compose up -d tools
sudo docker exec -it tools /bin/bash

## 2 Generate the crypto matrial
cd /var/hyperledger/config
cryptogen generate --config=./crypto-config.yaml

## 3 Generate the network artefacts
configtxgen -outputBlock  ./orderer/philgovgenesis.block -channelID ordererchannel  -profile PhilGovOrdererGenesis

configtxgen -outputCreateChannelTx  ./channel/philgovchannel.tx -channelID philgovchannel  -profile PhilGovChannel

## 4 Exit and shutdown tools container
exit
sudo docker-compose down

# Part-2  Setup the COA & DPWH peers

## 1 Launch the environment
sudo docker-compose up -d

## 2 Log into the tools container
sudo docker exec -it tools /bin/bash

## 3 As COA create | join | update channel
cd /var/hyperledger/config
. set-context.sh coa

peer channel create -c philgovchannel -f /var/hyperledger/config/channel/philgovchannel.tx --outputBlock /var/hyperledger/config/orderer/philgovchannel.block -o $ORDERER_ADDRESS

