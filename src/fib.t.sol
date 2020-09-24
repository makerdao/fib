pragma solidity ^0.6.7;

import "ds-test/test.sol";

import "./fib.sol";

contract FibTest is DSTest {
    Fibber fibber;

    function setUp() public {
        fibber = new Fibber();
    }

    function test_1_1() public {
        uint256[10] memory firstTenValues = [uint256(1), 1, 2, 3, 5, 8, 13, 21, 34, 55];
        for (uint256 i = 0; i < 10; i++) {
            assertEq(fibber.fib(i, 1, 1), firstTenValues[i]);
        }
    }
}
