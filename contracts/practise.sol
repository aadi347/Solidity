// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;


contract simpleStorage{
    uint public storedData;

    function set(uint256 x) public {
        storedData = x;

    }

    function get() public view returns (uint256) {
        return storedData;
    }
}

