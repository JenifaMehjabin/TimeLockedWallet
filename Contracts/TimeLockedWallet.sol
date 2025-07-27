// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Project {
    address public owner;
    uint256 public value;
    string public message;
    uint256 public unlockTime;


    constructor() {
        owner = msg.sender;
        value = 0;
        message = "Hello, World!";
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    function setValue(uint256 _value) public onlyOwner {
        value = _value;
    }

    function setMessage(string memory _message) public onlyOwner {
        message = _message;
    }

    function getValue() public view returns (uint256) {
        return value;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

        function withdraw() public {
        require(msg.sender == owner, "You are not the owner");
        require(block.timestamp >= unlockTime, "Funds are still locked");
        payable(owner).transfer(address(this).balance);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

}
