# Oracle Price Watcher

This project contains smart contracts and a script to fetch and update the price of Bitcoin (BTC) from CoinGecko on-chain. The smart contracts are written in Solidity and the price-watching script is written in JavaScript.

## Table of Contents
- [Oracle Price Watcher](#oracle-price-watcher)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Files](#files)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Usage](#usage)
  - [License](#license)

## Introduction

This repository demonstrates how to use a smart contract to fetch the current price of Bitcoin and update it on-chain using the CoinGecko API. It includes the following:

1. **Solidity Contracts**:
    - `Consumer.sol`
    - `IOracle.sol`
    - `Oracle.sol`
2. **JavaScript Script**:
    - `price-watcher.js`

## Files

### Solidity Contracts

- **Consumer.sol**: This contract is designed to consume data from the Oracle contract. It demonstrates how to request and receive price data.

- **IOracle.sol**: This is an interface contract for the Oracle. It defines the functions that the Oracle contract should implement.

- **Oracle.sol**: This contract is responsible for storing and providing the latest price data on-chain. It includes functions to update the price data.

### JavaScript Script

- **price-watcher.js**: This script uses the CoinGecko API to fetch the current price of Bitcoin (BTC) at regular intervals and updates this price on-chain using the `Oracle` contract.

## Prerequisites

- Node.js and npm
- Truffle
- Ganache or any other Ethereum client for local development
- MetaMask or any other web3 provider for interacting with the Ethereum network
- CoinGecko API

## Setup

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/oracle-price-watcher.git
    cd oracle-price-watcher
    ```

2. Install dependencies:
    ```bash
    npm install
    ```

3. Compile the smart contracts:
    ```bash
    truffle compile
    ```

4. Deploy the smart contracts to your development network:
    ```bash
    truffle migrate
    ```

## Usage

1. Start your local Ethereum client (e.g., Ganache).

2. Run the price watcher script:
    ```bash
    truffle exec ./price-watcher.js
    ```

This script will fetch the BTC price from CoinGecko every 5 seconds and update the `Oracle` contract with the latest price.

## License

This project is licensed under the MIT License.
