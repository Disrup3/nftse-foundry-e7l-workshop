pragma solidity ^0.8.13;

// SPDX-License-Identifier: UNLICENSED

contract CounterTest is ERC721Linkable {
    Counter public counter;

    // FUNCTION EXECUTED BEFORE THE TESTES ARE EXECUTED
    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    function testIncrement() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function testSetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}
