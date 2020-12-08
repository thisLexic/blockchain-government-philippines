#!/bin/bash

export ORG_CONTEXT=$1

# Logging specifications
export FABRIC_LOGGING_SPEC=INFO

# Location of the core.yaml
export FABRIC_CFG_PATH=/var/hyperledger/config/$1

# Address of the peer
export CORE_PEER_ADDRESS=peer1.$1.com:7051



# Local MSP for the admin - Commands need to be executed as org admin
export CORE_PEER_MSPCONFIGPATH=/var/hyperledger/crypto/$1.com/users/Admin@$1.com/msp

# Address of the orderer
export ORDERER_ADDRESS=orderer.coa.com:7050