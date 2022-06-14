# lightwalletd
```
~/.zcash/zcash.conf

txindex=1
insightexplorer=1
experimentalfeatures=1
rpcuser=xxxxx
rpcpassword=xxxxx
```

```sh
sudo pacman -S go
git clone https://github.com/zcash/lightwalletd
cd lightwalletd
make
./lightwalletd help
./lightwalletd --no-tls-very-insecure --zcash-conf-path ~/.zcash/zcash.conf --data-dir . --log-file /dev/stdout
```

```
getinfo
getblockchaininfo
getbestblockhash
z_gettreestate
getblock
getrawtransaction
sendrawtransaction
getrawmempool
getaddresstxids
getaddressbalance
getaddressutxos
```
## gRPCurl
https://github.com/fullstorydev/grpcurl
```sh
go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
export PATH=$PATH":$HOME/go/bin"
grpcurl -d '{"id": 1234, "tags": ["foo","bar"]}' grpc.server.com:443 my.custom.server.Service/Method
```

https://zcash.readthedocs.io/en/latest/lightwalletd/index.html
```sh
grpcurl mainnet.lightwalletd.com:9067 cash.z.wallet.sdk.rpc.CompactTxStreamer/GetLightdInfo
grpcurl -d '{"addresses":["tmQoJ3PTXgQLaRRZZYT6xk8XtjRbr2kCqwu"]}' testnet.lightwalletd.com:9067 cash.z.wallet.sdk.rpc.CompactTxStreamer/GetTaddressBalance

```
