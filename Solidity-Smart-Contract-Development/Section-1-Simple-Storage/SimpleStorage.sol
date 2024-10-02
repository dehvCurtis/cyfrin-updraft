// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    // favoriteNumber gets initialized to `0` if no value

    uint256 myFavoriteNumber; // 0
    uint256[] listOfFavoriteNumber; // [0,12,55]

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person public pat = Person({favoriteNumber: 7, name: "Pat"});

    // dynamic array (grows and shrinks)
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavNumber;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavNumber[_name] = _favoriteNumber;
    }
}

