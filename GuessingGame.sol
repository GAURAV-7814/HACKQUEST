// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract GuessingGame {
    address public owner;
    uint256 private secretNumber;
    mapping(address => bool) public winners;

    event Winner(address indexed player);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    constructor() {
        owner = msg.sender;
        secretNumber = 7; // Predetermined secret number
    }

    function guess(uint256 number) external {
        // require(!winners[msg.sender], "Already won");
        if (number == secretNumber) {
            winners[msg.sender] = true;
            emit Winner(msg.sender);
        }
    }

    function changeSecretNumber(uint256 newNumber) external onlyOwner {
        secretNumber = newNumber;
    }
}
