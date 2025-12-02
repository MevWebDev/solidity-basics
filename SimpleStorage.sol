// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // solidity version

contract SimpleStorage {
    uint256 myFavoriteNumber; // can have uint8 uint16 uint256 etc

    uint256[] listOfFavoriteNumbers;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    // dynamic array
    Person[] public listOfPeople;

    // static array
    Person[3] public listOfThreePeople;

    // Person public myFriend = Person(7,"Franek");

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
        
    }

    // view reads state, you can't modify anything just read
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(uint256 _favoriteNumber, string calldata _name ) public {
        Person memory newPerson = Person(_favoriteNumber, _name);
        listOfPeople.push(newPerson);
    }
}