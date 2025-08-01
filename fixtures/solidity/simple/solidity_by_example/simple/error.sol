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
//!           "caller": "0xff8c3B4Fb8564534A59891C19d7dD842EfFb3484"
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
//!           "caller": "0xbf397e9E8c1c8BA47447b728FA30f1E6e516ea41"
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
//!           "caller": "0x6da22B0C21AB20666764B89e31Bc758A0bC7aAD6"
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
//!           "caller": "0xefDD4F155c14b90B8786C773Cc75c5DdFe3F4B7F"
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
//!           "caller": "0xEBe840a39589cC6BfE754001B46d8425eaD24319"
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
//!           "caller": "0xe2B9DfB85E0aD894968f71343dfcc4cE369C2C5A"
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
//!           "caller": "0x8E4CDdc803690bfCE147AC6B2Bb99BF615D65147"
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
