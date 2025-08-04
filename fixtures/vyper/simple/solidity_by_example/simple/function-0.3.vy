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
#!           "caller": "0x00DB8C0A6C63362A109C895F5f0667d86D139c7A"
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
#!           "caller": "0xE2e908ABeF94a7C6747e2033C43E98Bf7415Fa1C"
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
#!           "caller": "0xd368D41Dda2cCb583Bf542BdB79E21788eA53414"
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
#!           "caller": "0x00050B32785996f4467594c030d1EC4b839E0D3C"
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
