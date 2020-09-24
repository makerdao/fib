// Copyright (C) 2020 Maker Ecosystem Growth Holdings, INC.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

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
