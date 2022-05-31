//SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.14;

contract Whitelist {
    mapping(address => bool) whitelist;

    struct Person {
        string name;
        uint age;
    }

    Person [] public People;

    event Authorized(address _address);
               
    function authorize (address _address) public {
        whitelist[_address] = true;
        emit Authorized (_address);
    }

}