// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

contract Bank {

mapping (address => uint) balances;

event _deposit(uint _amount);
event _transfer(address _recipient, uint _amount);
 
function deposit( uint256 _amount) external {
     require(msg.sender != address(0), "Zero address cannot execute deposit !");
     require(_amount > 0, "Deposit amount cannot be negative or equal to zero !");

    balances[msg.sender] += _amount;
    emit _deposit(_amount);
}

function transfer(address _recipient, uint _amount) external {
    require(msg.sender != address(0), "Zero address cannot execute deposit !");
    require(_amount > 0, "Deposit amount cannot be negative or equal to zero !");

    balances[msg.sender] -= _amount;
    balances[_recipient] += _amount;
    

    emit _transfer(_recipient, _amount);
}

function balanceOf(address _address) public view returns(uint) {
    return balances[_address];
}




}