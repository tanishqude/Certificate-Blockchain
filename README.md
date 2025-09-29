# Blockchain Certificate System

## Overview
This project simulates a blockchain-based certificate system using Ethereum smart contracts.

## Contract Details
- Language: Solidity
- Network: Sepolia Testnet
- Contract Address: 0x2F697Cd77736DbeD7fE97e471dCF1b38c96C10be

## Features
- Issue certificates (only by owner)
- Verify certificates on-chain
- Check certificates owned by an address

## How to Run
1. Open Remix IDE.
2. Paste `Certificate.sol`.
3. Compile and deploy on Sepolia testnet using MetaMask.
4. Use `issueCertificate(address)` to issue.
5. Use `verifyCertificate(certId, address)` to verify.
