FROM fedimint/fedimintd:master

ENV FM_BITCOIN_RPC_KIND=esplora \
    FM_BITCOIN_RPC_URL=https://mutinynet.com/api/ \
    FM_BITCOIN_NETWORK=signet \
    FM_BIND_P2P=0.0.0.0:8173 \
    FM_P2P_URL=fedimint://127.0.0.1:8173 \
    FM_BIND_API=0.0.0.0:8174 \
    FM_API_URL=ws://127.0.0.1:8174