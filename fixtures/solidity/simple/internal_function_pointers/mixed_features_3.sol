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
//!           "caller": "0xa1cfdd607bba6c347c35b8e952eae2f9dbb85ff3"
//!         },
//!         {
//!           "method": "recursiveAction",
//!           "calldata": [
//!             "10",
//!             "5"
//!           ],
//!           "caller": "0xa1cfdd607bba6c347c35b8e952eae2f9dbb85ff3"
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
