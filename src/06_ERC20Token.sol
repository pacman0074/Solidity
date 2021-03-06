//SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.8.14;
 
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
 
contract ERC20Token is ERC20 {   
   constructor(uint256 initialSupply) ERC20("ALYRA", "ALY") {
       _mint(msg.sender, initialSupply);
   } 
}
