#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "returnMany",
#!       "inputs": [
#!         {
#!           "method": "returnMany",
#!           "calldata": [],
#!           "caller": "0x38b613D7F0d127B00c667A2491963Eaf3C219C7A"
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
#!           "caller": "0x2eBA87937E40320e557979A2DD8e82e4F222867D"
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
#!           "caller": "0x80e39e6b7159aa82c8832D2bA9E055AA3346B20e"
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
#!           "caller": "0x9d5e83BACC456B3cD0faC62ffACe046BbBb4d1B6"
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
