//SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.11;

contract Whitelist {
    mapping (address => bool) whitelist;

    struct Person {
        string name;
        uint age;
    }

    Person [] public People;
    
    event authorized(address _address);

    function addPerson1 (string memory _name, uint  _age)  public pure returns ( Person memory)  {
    return  Person  (_name, _age);
    }

    

    function addPerson2 (string memory _name, uint _age)  public pure {
        Person memory newPerson;
        newPerson = Person ({
            name : _name,
            age : _age
        });

    }

    function addPersonAlyra (string memory _name, uint _age) public pure {
        Person memory newPerson;
        newPerson.name = _name;
        newPerson.age = _age;
    }

    //ajout personne dans le tableau people
    function add(string memory _name, uint _age) public {
        Person memory newPerson;
        newPerson.name = _name;
        newPerson.age = _age;

        People.push(newPerson);
    }

    //Suppression personne du tableau people
    function remove() public{
        People.pop();
    }

    receive() external payable { }
    fallback() external payable { }


}