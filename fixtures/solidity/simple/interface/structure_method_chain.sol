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
//!           "caller": "0x81b91e0B01EAE508a2c05c20edB7423Af2Ae20db"
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
//!           "caller": "0x5Ed0Ca5282a5e6d808C770F6842C57F3688b1765"
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
//!           "caller": "0xe98fF704ed3f89F330008b4EfC8210837FB7e283"
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
