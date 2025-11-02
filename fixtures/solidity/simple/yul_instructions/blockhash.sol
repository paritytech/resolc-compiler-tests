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
//!           "caller": "0x63ee75865b30f13b614a144023c133bd683e8134"
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
//!           "caller": "0x9ac0e946d9dc8fa6d4731cc51f538936aac968b8"
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
//!           "caller": "0xe7215f2786e18a0b0553aeb51421f0aa1615ae6e"
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
//!           "caller": "0xe098e4b9a0d235ab2c5ae5401b59ee127c85423c"
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
//!           "caller": "0x1a5e5e4ec968bf44b0921c82793b0312b924e311"
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
//!           "caller": "0x9e854189dc12d037bf84d0d3c27109f176b404d2"
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
//!           "caller": "0x0acf38bdaf4d2357c93fb0130c53f464c9909a63"
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
//!           "caller": "0xef79584e5b5ce0205ef9b775708f0881b3bde7b9"
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
//!           "caller": "0xf31d314657ce3b7f0b096b74d6767748095663c9"
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
//!           "caller": "0xa1b777bffa9f2259caad3c66f596acbfb55a6eab"
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
