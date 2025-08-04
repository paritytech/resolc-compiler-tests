#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "12"
#!           ],
#!           "storage": {
#!             "Test.address": [
#!               "0x03",
#!               "0x05",
#!               "0x02"
#!             ]
#!           },
#!           "caller": "0xC3Fd32CD225A9F27F7742871cFd84dC52794ED1C"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     }
#!   ]
#! }

field_1: uint8
field_2: uint8
field_3: uint8

@external
def main(witness: uint8) -> uint8:
    return witness + self.field_1 * self.field_2 * self.field_3
