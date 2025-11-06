//! {
//!   "modes": [
//!     "Y",
//!     "E"
//!   ],
//!   "cases": [
//!     {
//!       "name": "double",
//!       "inputs": [
//!         {
//!           "method": "calculate",
//!           "calldata": [
//!             "0x0000000000000000000000000000000000000000000000000000000000000040",
//!             "0x0000000000000000000000000000000000000000000000000000000000000005",
//!             "0x0000000000000000000000000000000000000000000000000000000000000006",
//!             "0x646F75626C650000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0x85edbb66472c71e0a8a68b266d76e95d152b8f1a"
//!         }
//!       ],
//!       "expected": [
//!         "0x000000000000000000000000000000000000000000000000000000000000000a"
//!       ]
//!     },
//!     {
//!       "name": "triple",
//!       "inputs": [
//!         {
//!           "method": "calculate",
//!           "calldata": [
//!             "0x0000000000000000000000000000000000000000000000000000000000000040",
//!             "0x0000000000000000000000000000000000000000000000000000000000000005",
//!             "0x0000000000000000000000000000000000000000000000000000000000000006",
//!             "0x747269706C650000000000000000000000000000000000000000000000000000"
//!           ],
//!           "caller": "0x020b7f091689120d2d59955ad1c0c4e5f9595e54"
//!         }
//!       ],
//!       "expected": [
//!         "0x000000000000000000000000000000000000000000000000000000000000000f"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    mapping (string => function (uint) internal pure returns (uint)) functions;

    constructor() public {
        functions["double"] = double;
        functions["triple"] = triple;
    }

    function calculate(string memory funcName, uint num) public view returns (uint) {
        return functions[funcName](num);
    }

    function double(uint num) internal pure returns (uint) {
        return num * 2;
    }

    function triple(uint num) internal pure returns (uint) {
        return num * 3;
    }
}
