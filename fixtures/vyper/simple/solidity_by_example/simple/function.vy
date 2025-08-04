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
#!           "caller": "0x8e102563f66668f7D50aEaFEa63F6e1C9d2b9519"
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
#!           "caller": "0x5E575fDCddc45934EC18ac0A9F8E8F15AA32eE32"
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
#!           "caller": "0x32D7bEc5F861A8Ca77eDBBe376D55EC0738ea1aB"
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
#!           "caller": "0x752e703f824de913709Ad471E5f56a0bEF8a4B73"
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
