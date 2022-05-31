// SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./10_Random.sol";

contract admin is Ownable {
    /*mapping (address => bool) WhitelistAddress;
    mapping (address => bool) BlacklistAddress;*/

    address [] private WhitelistAddress;
    address [] private BlacklistAddress;

    uint private nonceWhite = 0;
    uint private nonceBlack = 0;

    Random randomIndice;


    event Whitelisted(address _address);
    event Blacklisted(address _address);




    function whitelist(address _address) public onlyOwner {
        WhitelistAddress.push(_address);

        emit Whitelisted(_address);



        
    }

    function blacklist(address _address) public onlyOwner {
        BlacklistAddress.push(_address);
    
        emit Blacklisted(_address);
    }


    function isWhitelisted() public returns(address){
        require(WhitelistAddress.length != 0, "Nobody is whitelisted !" );
        nonceWhite += 1;

        return WhitelistAddress[uint(keccak256(abi.encode(block.timestamp,msg.sender,nonceWhite))) % (WhitelistAddress.length -1)];


    }

    function isBlacklisted () public returns(address){
        require(BlacklistAddress.length != 0, "Nobody is blacklisted !");
        nonceBlack+=1;

        return BlacklistAddress[uint(keccak256(abi.encode(block.timestamp, msg.sender, nonceBlack))) % (BlacklistAddress.length -1)];

    }

    
}