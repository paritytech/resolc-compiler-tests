//! {
//!   "cases": [
//!     {
//!       "name": "returnMany",
//!       "inputs": [
//!         {
//!           "method": "returnMany",
//!           "calldata": [],
//!           "caller": "0x2feedcd856e514d9677b0a65671fb7e175120d87"
//!         }
//!       ],
//!       "expected": [
//!         "1",
//!         "1",
//!         "2"
//!       ]
//!     },
//!     {
//!       "name": "named",
//!       "inputs": [
//!         {
//!           "method": "named",
//!           "calldata": [],
//!           "caller": "0x15193c65ddd378a49cb9bfe778a7e0301676d0ff"
//!         }
//!       ],
//!       "expected": [
//!         "1",
//!         "1",
//!         "2"
//!       ]
//!     },
//!     {
//!       "name": "assigned",
//!       "inputs": [
//!         {
//!           "method": "assigned",
//!           "calldata": [],
//!           "caller": "0x9bd81d3ad9362e5f7732d6fc2a5c5d645f09a984"
//!         }
//!       ],
//!       "expected": [
//!         "1",
//!         "1",
//!         "2"
//!       ]
//!     },
//!     {
//!       "name": "destructingAssigments",
//!       "inputs": [
//!         {
//!           "method": "destructingAssigments",
//!           "calldata": [],
//!           "caller": "0xc8302bf72b8ded4f64e4c37119999f1e4409e449"
//!         }
//!       ],
//!       "expected": [
//!         "1",
//!         "1",
//!         "2",
//!         "4",
//!         "6"
//!       ]
//!     },
//!     {
//!       "name": "arrayInput",
//!       "inputs": [
//!         {
//!           "method": "arrayInput",
//!           "calldata": [
//!             "0x20",
//!             "0"
//!           ],
//!           "caller": "0xc1147a964fadbafff340b861b4300b03f0b6fdd6"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "arrayOutput",
//!       "inputs": [
//!         {
//!           "method": "arrayOutput",
//!           "calldata": [],
//!           "caller": "0x300d76c7145753f6f2515f150f39a14a6f198f7f"
//!         }
//!       ],
//!       "expected": [
//!         "0x20",
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.24;

contract Test {
    // Functions can return multiple values.
    function returnMany()
        public
        pure
        returns (
            uint,
            bool,
            uint
        )
    {
        return (1, true, 2);
    }

    // Return values can be named.
    function named()
        public
        pure
        returns (
            uint x,
            bool b,
            uint y
        )
    {
        return (1, true, 2);
    }

    // Return values can be assigned to their name.
    // In this case the return statement can be omitted.
    function assigned()
        public
        pure
        returns (
            uint x,
            bool b,
            uint y
        )
    {
        x = 1;
        b = true;
        y = 2;
    }

    // Use destructing assignment when calling another
    // function that returns multiple values.
    function destructingAssigments()
        public
        pure
        returns (
            uint,
            bool,
            uint,
            uint,
            uint
        )
    {
        (uint i, bool b, uint j) = returnMany();

        // Values can be left out.
        (uint x, , uint y) = (4, 5, 6);

        return (i, b, j, x, y);
    }

    // Cannot use map for neither input nor output

    // Can use array for input
    function arrayInput(uint[] memory _arr) public {}

    // Can use array for output
    uint[] public arr;

    function arrayOutput() public view returns (uint[] memory) {
        return arr;
    }
}
