FROM fedimint/fedimintd:v0.4.2

ENV FM_DEFAULT_BITCOIND_RPC_KIND=esplora \
    FM_DEFAULT_BITCOIND_RPC_URL=https://mutinynet.com/api/ \
    FM_BITCOIN_NETWORK=signet \
    FM_BIND_P2P=0.0.0.0:8173 \
    FM_P2P_URL=fedimint://127.0.0.1:8173 \
    FM_BIND_API=0.0.0.0:8174 \
    FM_API_URL=ws://127.0.0.1:8174 \
    FM_REL_NOTES_ACK=0_4_xyz