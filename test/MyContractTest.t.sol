// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {MyContract} from "../src/MyContract.sol";
import {StdInvariant} from "forge-std/StdInvariant.sol";

contract MyContractTest is Test{

    MyContract public myContract;

    function setUp() public{
        myContract= new MyContract();
        targetContract(address(myContract));


    }

    function test_IsAlwaysBeZero() public {
       uint256 data=0;
        myContract.doStuff(data);
        assert(myContract.shouldAlwaysBeZero() ==0);
    }

    function test_IsAlwaysBeZeroFuzz(uint data) public{
        myContract.doStuff(data);
        assert(myContract.shouldAlwaysBeZero()==0);
    }

    function invariant_ShouldAlwaysBeZero()public view{
          assert(myContract.shouldAlwaysBeZero()==0);

    }



}