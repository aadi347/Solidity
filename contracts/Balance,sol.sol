// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Owner {
    uint256 public currentValue = 300;
    uint256 public storeTime;
    uint256 public Id = 2717186222;
    
    uint256 public scaleFactor = 101; 
    uint256 public scaleBase = 100;

    constructor() {
        storeTime = block.timestamp;
    }


    function storeCurrentTime() public {
        storeTime = block.timestamp;
    }

    function topUp(uint112 amount) public {
        currentValue += amount;
    }

 
    function withDraw(uint112 amount) public {
        require(currentValue >= amount, "Amount too large, currentValue less than zero.");
        currentValue -= amount;
    }


    function checkBalance() public view returns (uint256) {
        return currentValue;
    }


    function compound() public {
        uint256 currentTime = block.timestamp;
        uint256 timeElapsed = currentTime - storeTime;

   
        uint256 multiplier = (scaleFactor ** timeElapsed) / (scaleBase ** (timeElapsed - 1));
        currentValue = (currentValue * multiplier) / scaleBase;

     
        storeTime = currentTime;
    }
}
