//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "ignore": true,
//!       "comment": "We can't be certain that we can get the genesis block hash since blockhash only supports the last 256 blocks",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xB1021fe68BD8E4a97290A7ccFe4e7f90346040c5"
//!         }
//!       ],
//!       "expected": [
//!         "0x3737373737373737373737373737373737373737373737373737373737373737"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "current_plus_offset",
//!           "calldata": [
//!             "19"
//!           ],
//!           "caller": "0x0BD504CE6B9e10487901C3092B50236f46b86426"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "current_minus_257",
//!       "ignore": true,
//!       "comment": "Ignored since we can't guarantee what the block number is before execution, we want to enable this at some point but perhaps only make it run once the block hash is above 256",
//!       "inputs": [
//!         {
//!           "method": "current_minus_offset",
//!           "calldata": [
//!             "257"
//!           ],
//!           "caller": "0x7953411cD13988Fc53852dE09b8BBc59b023D5c7"
//!         }
//!       ],
//!       "expected": [
//!         "$BLOCK_HASH:257"
//!       ]
//!     },
//!     {
//!       "name": "current_minus_256",
//!       "inputs": [
//!         {
//!           "method": "current_minus_offset",
//!           "calldata": [
//!             "256"
//!           ],
//!           "caller": "0xeF8E94cCaB99E05a03Dd274c9D2E204710326c52"
//!         }
//!       ],
//!       "expected": [
//!         "$BLOCK_HASH:256"
//!       ]
//!     },
//!     {
//!       "name": "current_minus_255",
//!       "inputs": [
//!         {
//!           "method": "current_minus_offset",
//!           "calldata": [
//!             "255"
//!           ],
//!           "caller": "0xeF8E94cCaB99E05a03Dd274c9D2E204710326c52"
//!         }
//!       ],
//!       "expected": [
//!         "$BLOCK_HASH:255"
//!       ]
//!     },
//!     {
//!       "name": "current_minus_one",
//!       "inputs": [
//!         {
//!           "method": "current_minus_offset",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0xeF8E94cCaB99E05a03Dd274c9D2E204710326c52"
//!         }
//!       ],
//!       "expected": [
//!         "$BLOCK_HASH:1"
//!       ]
//!     },
//!     {
//!       "name": "current",
//!       "inputs": [
//!         {
//!           "method": "current_plus_offset",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xd3eFd1E99bFd75C635056e2b83980039ec1d0734"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "current_plus_one",
//!       "inputs": [
//!         {
//!           "method": "current_plus_offset",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x5Ceaf81E1E8Bd7c694df899479C3D47401Ef9b26"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "23492394923"
//!           ],
//!           "caller": "0xA162d57136112861905E04E790f16DE4F4bD9ff3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x63431DBF1eF9C64AFcCA738a2Bea9cB3B5987EDd"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 n) external view returns (uint256 result) {
        assembly {
            result := blockhash(n)
        }
    }

    function current_plus_offset(
        uint256 offset
    ) external view returns (uint256 result) {
        uint256 blockNumber = block.number + offset;
        assembly {
            result := blockhash(blockNumber)
        }
    }

    function current_minus_offset(
        uint256 offset
    ) external view returns (uint256 result) {
        uint256 blockNumber = block.number;
        if (offset >= blockNumber) {
            blockNumber = 0;
        } else {
            blockNumber -= offset;
        }
        assembly {
            result := blockhash(blockNumber)
        }
    }
}
