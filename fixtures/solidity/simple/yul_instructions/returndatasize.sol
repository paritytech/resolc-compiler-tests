//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x64a7939cf531ab225d8463a9738d56bC1445172B"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x0eBE30547c7296d3Be9286d52120E4567ade1245"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "19"
//!           ],
//!           "caller": "0xfb669b837Ce19f88BD9F6b4B59e3af7855b53193"
//!         }
//!       ],
//!       "expected": [
//!         "19"
//!       ]
//!     },
//!     {
//!       "name": "word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32"
//!           ],
//!           "caller": "0x86BEee259878d235C6C19909Fba542644b7E663C"
//!         }
//!       ],
//!       "expected": [
//!         "32"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383"
//!           ],
//!           "caller": "0xF1A28261f3bfF432b2B09a2B686E08dD605E50e4"
//!         }
//!       ],
//!       "expected": [
//!         "2383"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100"
//!           ],
//!           "caller": "0x873570e6a4dD616F66E937F602cAf7626069F4ca"
//!         }
//!       ],
//!       "expected": [
//!         "0xF100"
//!       ]
//!     },
//!     {
//!       "name": "initial",
//!       "inputs": [
//!         {
//!           "method": "initial",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x8280e6EB957a852c1e8A3C349a322358Fe2019bA"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "overwrite_smaller",
//!       "inputs": [
//!         {
//!           "method": "overwrite",
//!           "calldata": [
//!             "300",
//!             "200"
//!           ],
//!           "caller": "0xe3648c4AfEa49847Ff2a9bb75e107D23287f4501"
//!         }
//!       ],
//!       "expected": [
//!         "200"
//!       ]
//!     },
//!     {
//!       "name": "overwrite_equals",
//!       "inputs": [
//!         {
//!           "method": "overwrite",
//!           "calldata": [
//!             "1233",
//!             "1233"
//!           ],
//!           "caller": "0xf54273d47DD35451551B8d5e41e171DbfF512E46"
//!         }
//!       ],
//!       "expected": [
//!         "1233"
//!       ]
//!     },
//!     {
//!       "name": "overwrite_bigger",
//!       "inputs": [
//!         {
//!           "method": "overwrite",
//!           "calldata": [
//!             "0",
//!             "5"
//!           ],
//!           "caller": "0x5440339BB61a0320646d02BEbd1427199D7fD361"
//!         }
//!       ],
//!       "expected": [
//!         "5"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    function main(uint256 len) external returns(uint256 result) {
        assembly {
            mstore(0, len)
            pop(call(gas(), address(), 0, 0, 32, 0, 0))
            result := returndatasize()
        }
    }

    function initial() external returns(uint256 result) {
        assembly {
            result := returndatasize()
        }
    }

    function overwrite(uint256 len1, uint256 len2) external returns(uint256 result) {
        assembly {
            mstore(0, len1)
            pop(call(gas(), address(), 0, 0, 32, 0, 0))
            mstore(0, len2)
            pop(call(gas(), address(), 0, 0, 32, 0, 0))
            result := returndatasize()
        }
    }

    fallback() external {
        assembly {
            let len := calldataload(0)
            return(0, len)
        }
    }
}
