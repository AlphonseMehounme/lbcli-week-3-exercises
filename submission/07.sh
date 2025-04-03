# What is the receiver's address in this partially signed transaction?
transaction=cHNidP8BAHsCAAAAAhuVpgVRdOxkuC7wW2rvw4800OVxl+QCgezYKHtCYN7GAQAAAAD/////HPTH9wFgyf4iQ2xw4DIDP8t9IjCePWDjhqgs8fXvSIcAAAAAAP////8BigIAAAAAAAAWABTHctb5VULhHvEejvx8emmDCtOKBQAAAAAAAAAA
RECEIVER_ADDRESS=$(bitcoin-cli -regtest decodepsbt $transaction | jq -r '.tx.vout[0].scriptPubKey.address')
echo $RECEIVER_ADDRESS
