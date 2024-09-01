// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract MyContract {
    uint public shouldAlwaysBeZero =0;
    uint private hiddenValue=0;

    function doStuff(uint data) public {
        // if(data==3){
        //     shouldAlwaysBeZero=10;
        // }
        // if(hiddenValue==7){
        //      shouldAlwaysBeZero=10;
        // }
        hiddenValue=data;
    }
}