# skybridge-contract-v2

## Environment
- testrpc (ganache-cli) - v2.4.0
- truffle - v5.1.54
- solc - v0.7.5
- nodejs - v14.8.0
- web3 - v1.2.9

## Deploy contract
There are 2 steps to setup contracts on the ethereum testnet.
1. Deploy SwapContract and LP token contract
```
$ export SEED=<your mnemonic key>
$ truffle migrate --network {development/goerli}
```
2. Change the owner of SwapContract to TSS address
```
$ TSS={The TSS wallet address} truffle exec scripts/moveSCOwner.js --network {development/goerli} 
```

## Build contract
```
$ npn run build
```

## Test 
You have to start testrpc with 100 accounts and binding port `8545` before doing test
```
$ ganache-cli -a 100 -l 9000000
```
```
$ npm run test
or 
$ truffle test --network development
```