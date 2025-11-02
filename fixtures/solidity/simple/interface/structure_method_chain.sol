//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x8427bb22ca331f79b489c004a2ec805ce2040da4"
//!         }
//!       ],
//!       "expected": [
//!         "1008"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "64"
//!           ],
//!           "caller": "0x680fa96179acbd32bd8048061ecd5e9d54e99389"
//!         }
//!       ],
//!       "expected": [
//!         "1536"
//!       ]
//!     },
//!     {
//!       "name": "third",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1000000"
//!           ],
//!           "caller": "0x4ae521c23353b0ac2e8c76a262ede2186441c47e"
//!         }
//!       ],
//!       "expected": [
//!         "24000000"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;
pragma experimental ABIEncoderV2;

contract Test {
    struct Data {
        uint256 a;
    }

    function _new(uint256 a) private pure returns(Data memory) {
        return Data(a);
    }

    function double(Data memory data) private pure returns(Data memory) {
        return Data(data.a * 2);
    }

    function triple(Data memory data) private pure returns(Data memory) {
        return Data(data.a * 3);
    }

    function quadruple(Data memory data) private pure returns(Data memory) {
        return Data(data.a * 4);
    }

    function intoInner(Data memory data) private pure returns(uint256) {
        return data.a;
    }

    function main(uint256 witness) public pure returns(uint256) {
        return intoInner(
            quadruple(
                triple(
                    double(
                        _new(witness)
                    )
                )
            )
        );
    }
}
