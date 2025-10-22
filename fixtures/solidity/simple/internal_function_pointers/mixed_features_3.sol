//! {
//!   "modes": [
//!     "Y",
//!     "E"
//!   ],
//!   "cases": [
//!     {
//!       "name": "recursiveAction",
//!       "inputs": [
//!         {
//!           "method": "initializeOracle",
//!           "calldata": [],
//!           "caller": "0xfff923d2e5ab16c196d5817fbb2f7b4e1efc4ba6"
//!         },
//!         {
//!           "method": "recursiveAction",
//!           "calldata": [
//!             "10",
//!             "5"
//!           ],
//!           "caller": "0xfff923d2e5ab16c196d5817fbb2f7b4e1efc4ba6"
//!         }
//!       ],
//!       "expected": [
//!         "320"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;
pragma experimental ABIEncoderV2;

contract Oracle {
    function getValue(uint256 val) public pure returns(uint256) {
        return val * 2;
    }
}

contract Test {
    Oracle oracle;

    struct Data {
        uint256 val;
    }

    function initializeOracle() public {
        oracle = new Oracle();
    }

    function recursiveAction(Data memory data, uint8 depth) public returns (uint256) {
        if (depth == 0) {
            return data.val;
        }
        data.val = oracle.getValue(data.val);
        return recursiveAction(data, depth - 1);
    }
}
