# Create a native segwit address and get the public key from the address.
segwitaddress=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" "bech32")
addressinfo=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getaddressinfo $segwitaddress)
pubkey=$(echo $addressinfo | jq -r '.pubkey')
echo $pubkey
