# To-Do

![Compatibility](https://img.shields.io/badge/compatibility-0.6.25-blue)
[![Build Status](https://github.com/lispking/ic-todo/workflows/ic-todo/badge.svg)](https://github.com/lispking/ic-todo/actions?query=workflow%3Aic-todo)

# to-do

## Overview
This example illustrates how to create a to-do checklist of web3 application. 

The application is built from the following Motoko source code files:

- `Main.mo`: contains the core functions for adding, completing, and removing to-do checklist items.

This is a Motoko example that does not currently have a Rust variant. 

Web3 Todo Tool is a to-do list management application based on blockchain technology. It takes full advantage of the features of Web3, providing users with a decentralized, secure, transparent, and tamper-proof platform for managing their to-dos. 

Below is a detailed introduction to the Web3 Todo Tool:

* Decentralization: Web3 Todo Tool does not rely on any centralized servers or storage, instead, it distributes data across multiple nodes on the network through blockchain technology. This helps protect user privacy, reduces the risk of single-point failure, and ensures the durability and availability of data.
* Data Security: Due to the characteristics of blockchain technology, the data in Web3 Todo Tool is highly secure. Each to-do is packaged as an immutable data block and interconnected with other data blocks. Once a data block is modified, it will cause the hash value of all subsequent data blocks to change, rendering the entire chain ineffective. This mechanism effectively protects user data from being tampered with.
* User Privacy: Web3 Todo Tool uses encryption algorithms to ensure that users remain anonymous when creating and viewing to-dos. Users can freely manage their to-dos without worrying about privacy leaks.
* Transparency: The blockchain structure of Web3 Todo Tool makes all operations related to creating, modifying, and deleting to-dos publicly transparent. Users can check the changes in the chain data at any time to ensure its authenticity and integrity.
* Smart Contract Support: Web3 Todo Tool supports smart contracts, allowing users to customize the rules for creating, modifying, and deleting to-dos. For example, users can set the completion conditions for to-dos, and when these conditions are met, the to-dos will be automatically marked as completed.
* Multi-device Synchronization: Web3 Todo Tool supports multi-device synchronization, enabling users to easily manage their to-dos on different devices. Through blockchain technology, user data can be securely transmitted and synchronized across various devices.
Trustless Mechanism: In Web3 Todo Tool, users do not need to trust any third parties, as all data is stored on the blockchain, which is publicly transparent and tamper-proof. This allows users to use the tool with greater peace of mind.

## Prerequisites
This example requires an installation of:

- [x] Install the [IC SDK](https://internetcomputer.org/docs/current/developer-docs/setup/install/index.mdx).

Begin by opening a terminal window.

### Step 1: Navigate into the folder containing the project's files and start a local instance of the Internet Computer with the command:

``` bash
cd ic-todo
dfx start --background
```

### Step 2: Deploy the canister:

``` bash
dfx deploy
```

Now, you can see these log:

```bash
Deploying all canisters.
Creating canisters...
Creating canister ic_todo...
ic_todo canister created with canister id: be2us-64aaa-aaaaa-qaabq-cai
Building canisters...
Installing canisters...
Creating UI canister on the local network.
The UI canister on the "local" network is "br5f7-7uaaa-aaaaa-qaaca-cai"
Installing code for canister ic_todo, with canister ID be2us-64aaa-aaaaa-qaabq-cai
Deployed canisters.
URLs:
  Backend canister via Candid interface:
    ic_todo: http://127.0.0.1:4943/?canisterId=br5f7-7uaaa-aaaaa-qaaca-cai&id=be2us-64aaa-aaaaa-qaabq-cai
```


### Step 3: Now Open ic-todo Url and add/complete/clear/get todo checklist

```bash
open http://127.0.0.1:4943/?canisterId=br5f7-7uaaa-aaaaa-qaaca-cai&id=be2us-64aaa-aaaaa-qaabq-cai
```
