//! {
//!   "cases": [
//!     {
//!       "name": "returnMany",
//!       "inputs": [
//!         {
//!           "method": "returnMany",
//!           "calldata": [],
//!           "caller": "0xdEdD5523C5C4dc0e102C9ffeD751DD0383BE31a0"
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
//!           "caller": "0x5E6A7d2AD7d32540847ba89cF45874bdc569879f"
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
//!           "caller": "0xf7901C3272668D114527229ea5136F251795d008"
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
//!           "caller": "0xCb57EE379bbca473090C011b59cb967f2D48Cf7C"
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
//!           "caller": "0xfdCb2223510b008C2dC95012fbad0E0d20ca6Cf0"
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
//!           "caller": "0x75e018793110cCB59e82bB60327C0c433D00739a"
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
