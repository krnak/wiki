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
