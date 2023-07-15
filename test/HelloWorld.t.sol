// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/HelloWorld.sol";

contract HelloTest is Test {
    HelloWorld public hello;

    function setUp() public {
        hello = new HelloWorld();
    }

    function testGreet() public {
        assertEq(hello.greet(), "Hello world");
    }
}
