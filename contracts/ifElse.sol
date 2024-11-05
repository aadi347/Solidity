// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract ifElse{
    uint public number;

    function set(uint256 x) public {
        number = x;
    }


    function checkEvenOdd() public view returns (string memory){
        if(number % 2 == 0){
        return "The number is even";
        } else  {
        return "the number is odd";
        }
    }
    
}