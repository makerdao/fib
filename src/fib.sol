pragma solidity ^0.6.7;

contract Fibber {

    function fibonacciSum(uint256 nAdditions, uint256 f0, uint256 f1) internal pure returns (uint256 sum) {
        for (uint256 i = 0; i < nAdditions; i++) {
            sum = f0 + f1;
            f0 = f1;
            f1 = sum;
        }
    }

    function fib(uint256 N, uint256 f0, uint256 f1) external pure returns (uint256) {
        if (N == 0) return f0;
        if (N == 1) return f1;
        return fibonacciSum(N - 1, f0, f1);
    }
}
