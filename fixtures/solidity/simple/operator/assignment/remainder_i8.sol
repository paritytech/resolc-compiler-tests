//! {
//!   "cases": [
//!     {
//!       "name": "zero_by_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x1023272ce9334ab3b9388c0353dabf34be6e977d"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001200000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "ordinar_by_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "0"
//!           ],
//!           "caller": "0xb03560698b09fbd835384c1ba855fba890646ab1"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001200000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "min_by_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-128",
//!             "0"
//!           ],
//!           "caller": "0x72e459669291aeaef2461902f4fb042ced523296"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001200000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "max_by_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127",
//!             "0"
//!           ],
//!           "caller": "0xf31ebf81707b6e0f1f1efdb26f12b9b044930c33"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001200000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "zero_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "7"
//!           ],
//!           "caller": "0x6b8d7d626e89f6d88b69f61391d40308130d3223"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_negative_divided",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "7"
//!           ],
//!           "caller": "0x68ff675590844734c4f5284a1a4d47de69bc8cb3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_negative_divider",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "-7"
//!           ],
//!           "caller": "0xaaad39dcae4b62b408104ebf5351480cd8b95d67"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_negative_both",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "-7"
//!           ],
//!           "caller": "0x14867e289ffe550d3956bda69667f521a22d2bad"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_remainder_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "45",
//!             "7"
//!           ],
//!           "caller": "0x24f373840a0b093934434f063b722e74523b09f6"
//!         }
//!       ],
//!       "expected": [
//!         "3"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_remainder_negative_divided",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-45",
//!             "7"
//!           ],
//!           "caller": "0xc49688b27ad04e3493f1bd56052cb060f0e01a82"
//!         }
//!       ],
//!       "expected": [
//!         "-3"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_remainder_negative_divider",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "45",
//!             "-7"
//!           ],
//!           "caller": "0xf4f1a4e3b23b00d11460a0ec619600ce4a6be6dd"
//!         }
//!       ],
//!       "expected": [
//!         "3"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_remainder_negative_both",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-45",
//!             "-7"
//!           ],
//!           "caller": "0x648ba970a9285ec2867d9fe1088d0b865c7072ea"
//!         }
//!       ],
//!       "expected": [
//!         "-3"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max_remainder",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "48",
//!             "7"
//!           ],
//!           "caller": "0x874cdaa40758166f2c6fd5d0f00b6fed44955a9f"
//!         }
//!       ],
//!       "expected": [
//!         "6"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_next",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "49",
//!             "7"
//!           ],
//!           "caller": "0x6f577b2d57898504a2757e65e45e6a263649b164"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_to_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127",
//!             "127"
//!           ],
//!           "caller": "0x53542cec3e0568a88fdfe48fd94df8d31426c84a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127",
//!             "64"
//!           ],
//!           "caller": "0x022c53567a99d26aabdd033b4efef258ed6dd76a"
//!         }
//!       ],
//!       "expected": [
//!         "63"
//!       ]
//!     },
//!     {
//!       "name": "min_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-128",
//!             "127"
//!           ],
//!           "caller": "0x4b4733799e141b63f74694dc8b0bea4506a2a41f"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "min_to_negative_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-127",
//!             "3"
//!           ],
//!           "caller": "0x48159cf1f76426b2ac5ad8208e1b3e5517438d43"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "max_to_negative_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127",
//!             "-3"
//!           ],
//!           "caller": "0x204dd4ffd3250afee25e33ac25fdbe64fe454501"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int8 a, int8 b) public pure returns(int8) {
        int8 c = a;
        c %= b;
        return c;
    }
}
