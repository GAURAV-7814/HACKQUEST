# Guessing Game Smart Contract

## Description
This is a Solidity-based number guessing game deployed on the Ethereum blockchain. Users can submit their guesses, and if they correctly match the secret number, they are recorded as winners.

## Features
- Players can submit a guess for a predefined secret number.
- If a guess is correct, the player is marked as a winner.
- The contract owner can change the secret number.
- No tokens or fees are required to play.

## Contract Address
`0xA40d349f08F80cFdA8b93d7970E3D3684bF21843`

## Functions
### `guess(uint256 number) external`
- Allows a player to guess the secret number.
- If correct, the player is marked as a winner and an event is emitted.

### `changeSecretNumber(uint256 newNumber) external onlyOwner`
- Allows the contract owner to set a new secret number.

## Deployment Instructions
1. Compile the contract using Solidity ^0.8.0.
2. Deploy it to the Ethereum blockchain.
3. Store the deployed contract address for interaction.

## License
SPDX-License-Identifier: UNLICENSED
