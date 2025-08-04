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
#!             "16"
#!           ],
#!           "caller": "0xE2af13eB346C269238f4718D7621D5Cc99a008ed"
#!         }
#!       ],
#!       "expected": [
#!         "128"
#!       ]
#!     }
#!   ]
#! }

struct Data:
    a: uint8[3]

@external
@pure
def main(witness: uint8) -> uint8:
    data: Data[3] = [
        Data(a=[1, 2, 3]),
        Data(a=[3, 4, 5]),
        Data(a=[7, 8, 9])
    ]

    return data[2].a[1] * witness
