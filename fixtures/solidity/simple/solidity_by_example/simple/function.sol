//! {
//!   "cases": [
//!     {
//!       "name": "returnMany",
//!       "inputs": [
//!         {
//!           "method": "returnMany",
//!           "calldata": [],
//!           "caller": "0x6B9450b9ac0901efcb7c07a163508650699924C5"
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
//!           "caller": "0x6fa4622052493BB371BBFB255EB50Ff7656DEd77"
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
//!           "caller": "0x30dE53b0b0fbb82a3A3EA487c3238Af2Fd32fC4F"
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
//!           "caller": "0xA7A77364735f396001bd9775ffdbE8DC824fF070"
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
//!           "caller": "0xD2c7eCD0644e6f146157448c31eDFbDA6899DB2C"
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
//!           "caller": "0x8c19fCa6c962cB1180D3B9AF2591A2B0cEC1c1Be"
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
