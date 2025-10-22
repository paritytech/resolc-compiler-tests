//! {
//!   "cases": [
//!     {
//!       "name": "testRequireOk",
//!       "inputs": [
//!         {
//!           "method": "testRequire",
//!           "calldata": [
//!             "11"
//!           ],
//!           "caller": "0x196e27e3833868782f9c100700f609ea265409ce"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "testRequireError",
//!       "inputs": [
//!         {
//!           "method": "testRequire",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x6ae34ce38b5491a4b2ec31fcd9ff69ba4bba0e45"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0x08c379a000000000000000000000000000000000000000000000000000000000",
//!           "0x0000002000000000000000000000000000000000000000000000000000000000",
//!           "0x0000001d496e707574206d7573742062652067726561746572207468616e2031",
//!           "0x3000000000000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "testRevertOk",
//!       "inputs": [
//!         {
//!           "method": "testRevert",
//!           "calldata": [
//!             "1131"
//!           ],
//!           "caller": "0x114dcb7923ab4f5c9edf849219b6ff98b8e65396"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "testRevertError",
//!       "inputs": [
//!         {
//!           "method": "testRevert",
//!           "calldata": [
//!             "10"
//!           ],
//!           "caller": "0x3883f3e79bef7279998de4daf22a64a77c7791d2"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0x08c379a000000000000000000000000000000000000000000000000000000000",
//!           "0x0000002000000000000000000000000000000000000000000000000000000000",
//!           "0x0000001d496e707574206d7573742062652067726561746572207468616e2031",
//!           "0x3000000000000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "testAssert",
//!       "inputs": [
//!         {
//!           "method": "testAssert",
//!           "calldata": [
//!             "10"
//!           ],
//!           "caller": "0x8c8371709d200875f62257f2e3345a79fe44231f"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "testCustomErrorOk",
//!       "inputs": [
//!         {
//!           "method": "testCustomError",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x8d28d027db617422768991256dc5c664e03c7ec3"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "testCustomErrorError",
//!       "inputs": [
//!         {
//!           "method": "testCustomError",
//!           "calldata": [
//!             "123123"
//!           ],
//!           "caller": "0x4c79e69199eb7f2bc0b904eeacd16c6785dc64d7"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xcf47918100000000000000000000000000000000000000000000000000000000",
//!           "0x0000000000000000000000000000000000000000000000000000000000000000",
//!           "0x0001e0f300000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!       }
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

contract Test {
    function testRequire(uint _i) public pure {
        // Require should be used to validate conditions such as:
        // - inputs
        // - conditions before execution
        // - return values from calls to other functions
        require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint _i) public pure {
        // Revert is useful when the condition to check is complex.
        // This code does the exact same thing as the example above
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    uint public num;

    function testAssert() public view {
        // Assert should only be used to test for internal errors,
        // and to check invariants.

        // Here we assert that num is always equal to 0
        // since it is impossible to update the value of num
        assert(num == 0);
    }

    // custom error
    error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomError(uint _withdrawAmount) public view {
        uint bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount});
        }
    }
}
