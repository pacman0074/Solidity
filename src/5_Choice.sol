//SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.8.11;

contract Choice {

    mapping  (address => uint) choices;

    function add (uint _myuint) public {
        choices[msg.sender] = _myuint;  
    } 

    function get() public view returns (uint) {
        return choices[msg.sender];
    }
}