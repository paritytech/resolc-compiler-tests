#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "#deployer",
#!           "caller": "0x39e03ace08Ed60039352A0efB6368cDa503ed722",
#!           "calldata": [
#!             "25",
#!             "42"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ]
#!         },
#!         {
#!           "method": "a",
#!           "calldata": [],
#!           "expected": [
#!             "25"
#!           ],
#!           "caller": "0xc7863Ed8d92a155200C38E3eD41382620D1B99C4"
#!         },
#!         {
#!           "method": "b",
#!           "calldata": [],
#!           "expected": [
#!             "0x99"
#!           ],
#!           "caller": "0xc7863Ed8d92a155200C38E3eD41382620D1B99C4"
#!         },
#!         {
#!           "method": "c",
#!           "calldata": [],
#!           "expected": [
#!             "42"
#!           ],
#!           "caller": "0xc7863Ed8d92a155200C38E3eD41382620D1B99C4"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     }
#!   ]
#! }

# Report https://linear.app/matterlabs/issue/CPR-288/implement-the-setimmutable-and-loadimmutable-functions

a: immutable(uint256)
b: immutable(address)
c: immutable(uint8)

@external
def __init__(x: uint256, y: uint8):
    a = x
    b = msg.sender
    c = y

@external
def a() -> uint256:
    return a

@external
def b() -> address:
    return b

@external
def c() -> uint8:
    return c
