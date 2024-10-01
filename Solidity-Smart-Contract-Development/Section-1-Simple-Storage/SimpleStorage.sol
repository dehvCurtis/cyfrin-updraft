// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    // favoriteNumber gets initialized to `0` if no value

    uint256 favoriteNumber;
    uint256[] listOfFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

}

