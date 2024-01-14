// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AITU_Kamilla_Token is ERC20 {
    address public owner;

    constructor() ERC20("AITU_Kamilla", "AITU_Kamilla_Anuarbekova") {
        _mint(msg.sender, 2000 * 10 **18);
        owner = msg.sender;
    }

    // Function to get the block timestamp of the latest transaction
    function getLatestTransactionTimestamp() external view returns (uint256) {
        require(totalSupply() > 0, 'No transactions yet');
        uint256 timestamp = block.timestamp;
        return timestamp;
    }

    // Function to retrieve the address of the transaction sender
    function getTransactionSender() external view returns (address) {
        require(totalSupply() > 0, 'No transactions yet');
        return msg.sender;
    }

    // Function to retrieve the address of the transaction receiver
    function getTransactionReceiver() external view returns (address) {
        require(totalSupply() > 0, 'No transactions yet');
        return address(this); // Assuming token contract address is the receiver for simplicity
    }
}