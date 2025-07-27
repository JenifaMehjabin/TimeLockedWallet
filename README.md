# TimeLockedWallet

## Project Description
TimeLockedWallet is a smart contract that allows users to deposit ETH and lock it until a specified future time. The contract ensures that withdrawals are only possible after the unlock time has passed, providing a secure time-locked savings mechanism using blockchain technology.

## Project Vision
To enable secure, time-locked ETH savings using smart contracts, helping users enforce discipline in their saving habits and protect funds from impulsive spending decisions.

## Key Features
- **Time-Locked Deposits**: Lock ETH with a future unlock timestamp
- **Owner-Only Access**: Only the contract creator can deposit and withdraw funds
- **Transparent Balance Tracking**: View current contract balance at any time
- **Lock Status Monitoring**: Check remaining lock time and current lock status
- **Event Logging**: All deposits and withdrawals are logged as events
- **Security Modifiers**: Built-in protection against unauthorized access and early withdrawals

## Future Scope
- **Multi-User Support**: Allow multiple users to create individual time-locked deposits
- **ERC20 Token Support**: Extend functionality to support various ERC20 tokens
- **Emergency Recovery**: Implement emergency recovery options with multi-signature requirements
- **Flexible Lock Extensions**: Allow extending lock periods (but not reducing them)
- **Interest Accumulation**: Integration with DeFi protocols to earn yield on locked funds
- **Scheduled Deposits**: Automated recurring deposits with time-lock functionality

## Prerequisites
- MetaMask wallet extension installed
- Test ETH on Sepolia testnet
- Basic understanding of smart contracts
- Remix IDE access

## Installation & Setup

### 1. Install MetaMask
- Download from [Chrome Web Store](https://chromewebstore.google.com/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn?hl=en)
- Create a new wallet or import existing one
- Switch to Sepolia Testnet

### 2. Get Test ETH
- Use [Sepolia Faucet](https://sepoliafaucet.com/) to get test ETH
- Ensure you have sufficient balance for deployment and testing

### 3. Deploy Contract
- Open [Remix IDE](https://remix.ethereum.org/)
- Create new file: `TimeLockedWallet.sol`
- Copy and paste the contract code
- Compile using Solidity compiler (Ctrl+S)
- Switch to "Deploy & Run Transactions" tab
- Set environment to "Injected Provider - MetaMask"
- Deploy the contract

## Usage Examples

### Depositing and Locking ETH
```javascript
// Set unlock time to 1 hour from now (3600 seconds)
const unlockTime = Math.floor(Date.now() / 1000) + 3600;

// Call depositAndLock with 0.1 ETH
await contract.depositAndLock(unlockTime, { value: ethers.parseEther("0.1") });
```

### Checking Balance and Lock Status
```javascript
// Get current balance
const balance = await contract.getBalance();

// Check if funds are locked
const isLocked = await contract.areFundsLocked();

// Get remaining lock time in seconds
const remainingTime = await contract.getRemainingLockTime();
```

### Withdrawing Funds
```javascript
// Withdraw funds (only possible after unlock time)
await contract.withdraw();
```

## Contract Functions

### Core Functions
1. **`depositAndLock(uint256 _unlockTime)`** - Deposit ETH and set unlock time
2. **`withdraw()`** - Withdraw all funds (only after unlock time)
3. **`getBalance()`** - View current contract balance

### Utility Functions
1. **`getRemainingLockTime()`** - Get remaining seconds until unlock
2. **`areFundsLocked()`** - Check if funds are currently locked

## Security Features
- **Owner-only access control**: Only deployer can deposit/withdraw
- **Time-lock enforcement**: Prevents early withdrawals
- **Input validation**: Ensures unlock time is in the future
- **Event logging**: Transparent transaction history

## Smart Contract Details
**Deployed On**: Sepolia Testnet  
**Contract Address**: `0x123...` *(Update with actual address)*  
**Transaction Hash**: `0xabc...` *(Update with actual hash)*  
**Solidity Version**: ^0.8.20  
**License**: MIT  

## Gas Estimates
- Deployment: ~200,000 gas
- Deposit: ~50,000 gas
- Withdrawal: ~30,000 gas

## Testing
1. Deploy contract on Sepolia testnet
2. Test deposit with future unlock time
3. Verify funds are locked before unlock time
4. Attempt withdrawal before and after unlock time
5. Check balance and status functions


## Contributing
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly on testnet
5. Submit a pull request

## License
This project is licensed under the MIT License.

## Disclaimer
This smart contract is for educational purposes. Always conduct thorough testing and security audits before using in production environments.
