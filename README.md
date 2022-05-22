# cNFT

The repository contains the updated implementation of Top-Down Composable NFT (EIP 998) with test cases.

Difference between two approaches(top-down and bottom-up) of composable token can be found here - https://medium.com/hackernoon/top-down-and-bottom-up-composables-whats-the-difference-and-which-one-should-you-use-db939f6acf1d

Draft EIP 998: https://github.com/ethereum/EIPs/blob/master/EIPS/eip-998.md

## Composable NFT

A standard extension for any non-fungible token (NFT) to own another non-fungible ERC-721 token or fungible ERC-20 tokens. Transferring the composable token means transferring the entire hierarchy of items. Virtual assets can own their own assets. For example, a cryptokitty may own a scratching post and a feeding dish; the dish may contain some amount of fungible “chow” tokens.

The “parent” will refer to the composable ERC-721 (now ERC-998) token, and the “child” will refer to any ERC-721 or ERC-20 tokens owned by the composable.

## Getting started

To locally compile and deploy the contracts and verify its functioning, clone the repo and perform the following steps :

- Start terminal in the root path and run `npm i`.
- For compiling, run `truffle compile --all`.
- For deploying locally, run `truffle migrate --reset`.
- For executing test cases, run `truffle test`

