# 🌐 Web3 Social Graph 

A decentralized social networking protocol that allows users to own their social identity and connections on-chain.

## 🚀 Overview
Unlike Web2 social media, this project uses a **Graph-based** architecture on the blockchain. Users can:
- Create an On-chain Profile.
- Follow/Unfollow other users (Decentralized Connections).
- Store metadata (Bio, Profile Pic) on **IPFS**.

## 🛠️ Tech Stack
- **Blockchain:** Polygon / Ethereum
- **Smart Contracts:** Solidity
- **Storage:** IPFS (via Pinata)
- **Frontend:** React.js + Ethers.js
- **Indexing:** The Graph (Optional but recommended)

## 📁 Project Structure
- `/contracts`: Solidity smart contracts for profile management.
- `/frontend`: User Interface for interacting with the Social Graph.

## 🔧 Installation
1. Clone the repo: `git clone [Your-Repo-Link]`
2. Install dependencies: `npm install`
3. Deploy Contract: `npx hardhat run scripts/deploy.js --network mumbai`

## 🛡️ Security
This project uses OpenZeppelin's standard for secure and upgradeable contracts.
