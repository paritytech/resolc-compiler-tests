#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "returnMany",
#!       "inputs": [
#!         {
#!           "method": "returnMany",
#!           "calldata": [],
#!           "caller": "0x95E844a0acd476Cc5e0181f0799304589b2B560B"
#!         }
#!       ],
#!       "expected": [
#!         "1",
#!         "1",
#!         "2"
#!       ]
#!     },
#!     {
#!       "name": "destructingAssigments",
#!       "inputs": [
#!         {
#!           "method": "destructingAssigments",
#!           "calldata": [],
#!           "caller": "0x9Fb574C865EFA0F5e6084bf0556739af6A7B9fF0"
#!         }
#!       ],
#!       "expected": [
#!         "1",
#!         "1",
#!         "2",
#!         "4",
#!         "6"
#!       ]
#!     },
#!     {
#!       "name": "arrayInput",
#!       "inputs": [
#!         {
#!           "method": "arrayInput",
#!           "calldata": [
#!             "1",
#!             "2"
#!           ],
#!           "caller": "0xD467aaFc352957B53b206478e68A8413296A3ee9"
#!         }
#!       ],
#!       "expected": []
#!     },
#!     {
#!       "name": "arrayOutput",
#!       "inputs": [
#!         {
#!           "method": "arrayOutput",
#!           "calldata": [],
#!           "caller": "0x32566af6BfBca7A43D0eB6eE8e243C2a39BFdd3b"
#!         }
#!       ],
#!       "expected": [
#!         "0",
#!         "0"
#!       ]
#!     }
#!   ]
#! }


# Functions can return multiple values.
@external
@pure
def returnMany() -> (uint256, bool, uint256):
    return (1, True, 2)

@internal
@pure
def returnManyInternal() -> (uint256, bool, uint256):
    return (1, True, 2)

# Use destructing assignment when calling another
# function that returns multiple values.
@external
def destructingAssigments() -> (uint256, bool, uint256, uint256, uint256):
    i: uint256 = 0
    b: bool = False
    j: uint256 = 0
    (i, b, j) = self.returnManyInternal()

    x: uint256 = 0
    y: uint256 = 0
    x = 4
    y = 6

    return (i, b, j, x, y)

# Cannot use map for neither input nor output

# Can use array for input
@external
def arrayInput(_arr: uint256[2]):
    pass

# Can use array for output
arr: public(uint256[2])

@external
@view
def arrayOutput() -> uint256[2]:
    return self.arr
