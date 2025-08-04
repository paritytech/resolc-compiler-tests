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
//!           "caller": "0xDf7f104A3a5fc36017b537425CDCe1a09C416D72"
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
//!           "caller": "0x6A21b3Fd8Db1F931DbB3694831FE8921FF83Dad5"
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
//!           "caller": "0xDC1a9Cb27cF0aF399ba2aF8283b7960Fc948f987"
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
//!           "caller": "0xe9c0091c4dd3F25C6858D792D5e40Ef21DE4F5e5"
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
//!           "caller": "0x043A23B684B7316c4a19c23902f40439388B86A0"
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
//!           "caller": "0xA0BA976190D545C5f033c40e1f06604B9707df44"
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
//!           "caller": "0x2f7f1B0e9E75B43acF5B77F44780b9D23875cdC7"
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
