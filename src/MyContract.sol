// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract MyContract {
    uint public shouldAlwaysBeZero =0;
    uint private hiddenValue=0;

    function doStuff(uint data) public {
        if(data==3){
            shouldAlwaysBeZero=10;   //fuzz test will fail when data==3

        }
        if(hiddenValue==7){
             shouldAlwaysBeZero=10;      // invartiant will fail when hiddenValue =7
        }
        hiddenValue=data;
    }
}