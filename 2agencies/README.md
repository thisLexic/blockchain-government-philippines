This folder is for testing the decentralized network between two government agencies in the Philippines: COA and DWPH

Helper Commands
====================================
sudo docker-compose ps
sudo docker-compose down

Step 1   Setup the network artefacts
====================================

# 1 Launch and login to tools container
sudo docker-compose up -d tools
sudo docker exec -it tools /bin/bash

# 2 Generate the crypto matrial
cd /var/hyperledger/config
cryptogen generate --config=./crypto-config.yaml