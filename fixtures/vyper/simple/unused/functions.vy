#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "f4",
#!       "inputs": [
#!         {
#!           "method": "f4",
#!           "calldata": [
#!             "4"
#!           ],
#!           "caller": "0xdF02c03F95a0eE6c9A15b2f826ef29dc327F1600"
#!         }
#!       ],
#!       "expected": [
#!         "16"
#!       ]
#!     }
#!   ]
#! }

@internal
@pure
def f1(a: uint8) -> uint8:
    return a * 1

@internal
@pure
def f2(a: uint8) -> uint8:
    return a * 2

@internal
@pure
def f3(a: uint8) -> uint8:
    return a * 3

@external
@pure
def f4(a: uint8) -> uint8:
    return a * 4

@internal
@pure
def f5(a: uint8) -> uint8:
    return a * 5

@internal
@pure
def f6(a: uint8) -> uint8:
    return a * 6

@internal
@pure
def f7(a: uint8) -> uint8:
    return a * 7

@internal
@pure
def f8(a: uint8) -> uint8:
    return a * 8
