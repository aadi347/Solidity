// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;


contract calculator{
    uint public firstNumber = 10;
    uint public secondNumber = 10;

    function add() public view  returns (uint256) {
       return firstNumber + secondNumber;
    }

    function sub() public view  returns (uint256) {
       return firstNumber - secondNumber;
    }

    function multiply() public view  returns (uint256) {
       return firstNumber * secondNumber;
    }

    function divide() public view  returns (uint256) {
       return firstNumber / secondNumber;
    }
 

}
