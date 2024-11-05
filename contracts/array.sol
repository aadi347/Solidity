// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;


contract array {
   
    uint[] public numbers; 
    

    function addNumber(uint number) public {
        numbers.push(number); 
    }

    function getNumber(uint index) public view returns (uint) {
        require(index < numbers.length, "index is out of bound");
        return numbers[index];
    }

    function totalNumber() public view returns(uint) {
        return numbers.length;
    }

}