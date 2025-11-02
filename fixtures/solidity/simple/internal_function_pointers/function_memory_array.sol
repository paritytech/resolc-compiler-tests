//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "10",
//!             "0"
//!           ],
//!           "expected": [
//!             "11"
//!           ],
//!           "caller": "0xb0d676ad5f03159494e5daa4cc972d5bd3837428"
//!         },
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "10",
//!             "1"
//!           ],
//!           "expected": [
//!             "12"
//!           ],
//!           "caller": "0xb0d676ad5f03159494e5daa4cc972d5bd3837428"
//!         },
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "10",
//!             "2"
//!           ],
//!           "expected": [
//!             "13"
//!           ],
//!           "caller": "0xb0d676ad5f03159494e5daa4cc972d5bd3837428"
//!         },
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "10",
//!             "3"
//!           ],
//!           "expected": [
//!             "15"
//!           ],
//!           "caller": "0xb0d676ad5f03159494e5daa4cc972d5bd3837428"
//!         },
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "10",
//!             "4"
//!           ],
//!           "expected": [
//!             "18"
//!           ],
//!           "caller": "0xb0d676ad5f03159494e5daa4cc972d5bd3837428"
//!         },
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "10",
//!             "5"
//!           ],
//!           "caller": "0xb0d676ad5f03159494e5daa4cc972d5bd3837428"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4e487b7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000005100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": "<=0.7",
//!           "return_data": [],
//!           "exception": true
//!         }
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function a(uint256 x) public returns (uint256) {
        return x + 1;
    }

    function b(uint256 x) public returns (uint256) {
        return x + 2;
    }

    function c(uint256 x) public returns (uint256) {
        return x + 3;
    }

    function d(uint256 x) public returns (uint256) {
        return x + 5;
    }

    function e(uint256 x) public returns (uint256) {
        return x + 8;
    }

    function test(uint256 x, uint256 i) public returns (uint256) {
        function(uint) internal returns (uint)[] memory arr =
            new function(uint) internal returns (uint)[](10);
        arr[0] = a;
        arr[1] = b;
        arr[2] = c;
        arr[3] = d;
        arr[4] = e;
        return arr[i](x);
    }
}
// ====
// compileToEwasm: also
// ----
// test(uint256,uint256): 10, 0 -> 11
// test(uint256,uint256): 10, 1 -> 12
// test(uint256,uint256): 10, 2 -> 13
// test(uint256,uint256): 10, 3 -> 15
// test(uint256,uint256): 10, 4 -> 18
// test(uint256,uint256): 10, 5 -> FAILURE, hex"4e487b71", 0x51
