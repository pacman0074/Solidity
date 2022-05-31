// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Random {

    uint private nonce  = 0;

    function random() public returns(uint) {
        nonce += 1;
        return uint(keccak256(abi.encode(block.timestamp,msg.sender,nonce))) % 100;

    }
}