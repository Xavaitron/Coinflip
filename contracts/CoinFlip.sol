// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CoinFlip {
    address public owner;

    event CoinFlipped(address indexed player, bool outcome);

    constructor() {
        owner = msg.sender;
    }

    function flipCoin() public returns (bool) {
        bool outcome = random() == 1;
        emit CoinFlipped(msg.sender, outcome);
        return outcome;
    }

    function random() private view returns (uint8) {
        return uint8(uint256(keccak256(abi.encodePacked(block.timestamp, block.prevrandao, msg.sender))) % 2);
    }
}
