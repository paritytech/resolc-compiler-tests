//! {
//!   "cases": [
//!     {
//!       "name": "ok",
//!       "inputs": [
//!         {
//!           "method": "deposit",
//!           "calldata": [
//!             "20"
//!           ],
//!           "caller": "0x97c004220a1c96F377C58AFc2ebAb589E25455Ef"
//!         },
//!         {
//!           "method": "withdraw",
//!           "calldata": [
//!             "10"
//!           ],
//!           "caller": "0x97c004220a1c96F377C58AFc2ebAb589E25455Ef"
//!         },
//!         {
//!           "method": "balance",
//!           "calldata": [],
//!           "caller": "0x97c004220a1c96F377C58AFc2ebAb589E25455Ef"
//!         }
//!       ],
//!       "expected": [
//!         "10"
//!       ]
//!     },
//!     {
//!       "name": "MAX_UINT",
//!       "inputs": [
//!         {
//!           "method": "MAX_UINT",
//!           "calldata": [],
//!           "caller": "0x017cc5499741052Ad6C2C0E7334a1DbE669e42d7"
//!         }
//!       ],
//!       "expected": [
//!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!       ]
//!     },
//!     {
//!       "name": "overflow",
//!       "inputs": [
//!         {
//!           "method": "deposit",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xE94B1B14E7B329FDa9116b872BEd352EBF0dAcDC"
//!         },
//!         {
//!           "method": "deposit",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0xE94B1B14E7B329FDa9116b872BEd352EBF0dAcDC"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "0x08c379a000000000000000000000000000000000000000000000000000000000",
//!             "0x0000002000000000000000000000000000000000000000000000000000000000",
//!             "0x000000084F766572666C6F770000000000000000000000000000000000000000",
//!             "0x0000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "underflow",
//!       "inputs": [
//!         {
//!           "method": "deposit",
//!           "calldata": [
//!             "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe"
//!           ],
//!           "caller": "0x54e8a27e9F6a1471030ee095753F1bC50e903630"
//!         },
//!         {
//!           "method": "withdraw",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x54e8a27e9F6a1471030ee095753F1bC50e903630"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0x08c379a000000000000000000000000000000000000000000000000000000000",
//!           "0x0000002000000000000000000000000000000000000000000000000000000000",
//!           "0x00000009556e646572666c6f7700000000000000000000000000000000000000",
//!           "0x0000000000000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!       }
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22;

contract Test {
    uint public balance;
    uint public constant MAX_UINT = 2**256 - 1;

    function deposit(uint _amount) public {
        uint oldBalance = balance;
        uint newBalance = balance + _amount;

        // balance + _amount does not overflow if balance + _amount >= balance
        require(newBalance >= oldBalance, "Overflow");

        balance = newBalance;

        assert(balance >= oldBalance);
    }

    function withdraw(uint _amount) public {
        uint oldBalance = balance;

        // balance - _amount does not underflow if balance >= _amount
        require(balance >= _amount, "Underflow");

        if (balance < _amount) {
            revert("Underflow");
        }

        balance -= _amount;

        assert(balance <= oldBalance);
    }
}
