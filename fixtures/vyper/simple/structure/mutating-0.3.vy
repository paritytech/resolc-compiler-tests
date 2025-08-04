#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "3"
#!           ],
#!           "caller": "0xCFf0edA37947e20aadf9E27dF0fFB88e1d36e852"
#!         }
#!       ],
#!       "expected": [
#!         "64"
#!       ]
#!     }
#!   ]
#! }

struct Test:
    x: uint8
    y: uint8
    z: uint8

@external
@pure
def main(witness: uint8) -> uint8:
    test: Test = Test({x: 1, y: 2, z: 3})

    test.x += 5 * witness
    test.y += 7 * witness
    test.z += 9 * witness

    return test.z + test.y + test.x - 5
