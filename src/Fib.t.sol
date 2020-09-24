pragma solidity ^0.6.7;

import "ds-test/test.sol";

import "./Fib.sol";

contract FibTest is DSTest {
    Fib fib;

    function setUp() public {
        fib = new Fib();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
