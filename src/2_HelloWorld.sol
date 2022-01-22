//SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.11;
 
contract HelloWorld {
	string myString = "Hello World !"; 

    function hello() public view returns (string memory) {
        return myString; 
    }

} 



