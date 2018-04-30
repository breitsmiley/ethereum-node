#!/bin/bash

GEN_NONCE="0x$(openssl rand -hex 8)"
GEN_CHAIN_ID=$(((RANDOM % 100) + 1))
GEN_ALLOC='"0x0000000000000000000000000000000000000000": {"balance": "100000"}'
sed "s/\${GEN_NONCE}/$GEN_NONCE/g" genesis.json.template | sed "s/\${GEN_ALLOC}/$GEN_ALLOC/g" | sed "s/\${GEN_CHAIN_ID}/$GEN_CHAIN_ID/g" > genesis.json
