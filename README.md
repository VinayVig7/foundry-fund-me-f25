# 🏦 FundMe Smart Contract

A decentralized crowdfunding contract built with Solidity and Foundry. Users can fund the contract, and the owner can withdraw the balance. Includes deployment scripts, integration testing, and Etherscan verification support.

## 🚀 Features

Accepts ETH from any user

Records funders and their amounts

Owner-only withdrawals

Mock price feed for testing

Integration with Foundry DevOps Tools

Deployment & interaction scripts

Etherscan verification

## 🧰 Tech Stack

Solidity (v0.8.18)

Foundry (forge)

Chainlink Aggregator for price feeds

dotenv for private key & API management

### 📁 Project Structure

├── src/                 # Contracts (FundMe.sol)
├── script/              # Scripts for deploy/fund/withdraw
├── test/                # Unit and integration tests
├── lib/                 # External libraries
├── broadcast/           # Deployment logs
├── foundry.toml         # Foundry config
├── .env                 # Secrets file (excluded from git)
└── README.md            # Project overview

## 🛠️ Setup

Clone the repository:

git clone https://github.com/yourusername/fundme-foundry.git
cd fundme-foundry

Install Foundry:

curl -L https://foundry.paradigm.xyz | bash
foundryup

Add your .env:

SEPOLIA_RPC_URL=your_rpc_url
ETHERSCAN_API_KEY=your_etherscan_key
'For Private Key use keystores'

Install dependencies:

forge install

## 🧪 Run Tests

forge test -vvv

## 🚀 Deploy to Sepolia

forge script script/DeployFundMe.s.sol \
  --rpc-url $SEPOLIA_RPC_URL \
  --broadcast \
  --account <name>
  -vvvv

## 🔁 Interact with Contract

Fund the contract:

make fund

Withdraw from the contract:

make withdraw

## 🔍 Verify on Etherscan

forge verify-contract \
  --chain-id 11155111 \
  --compiler-version v0.8.18 \
  --etherscan-api-key $ETHERSCAN_API_KEY \
  <DEPLOYED_CONTRACT_ADDRESS> \
  FundMe

## ✅ License

MIT

## 🙌 Credits

Course Provider - Cyfrin Upcraft 
Teacher - Patrick Collins 



