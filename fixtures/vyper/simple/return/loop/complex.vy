#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "entry0",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0x30FFBa34b970993d8AA039031dFf5103B5DBEDdC"
#!         }
#!       ],
#!       "expected": [
#!         "4"
#!       ]
#!     },
#!     {
#!       "name": "entry1",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0x72D34280a580C9BD56Fc45e295159FACA67241a4"
#!         }
#!       ],
#!       "expected": [
#!         "5"
#!       ]
#!     },
#!     {
#!       "name": "entry2",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "2"
#!           ],
#!           "caller": "0xc221C7fa410c29a4376d045C561Dc5f2e7f6e425"
#!         }
#!       ],
#!       "expected": [
#!         "6"
#!       ]
#!     },
#!     {
#!       "name": "entry3",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "3"
#!           ],
#!           "caller": "0x7046A3Fc5E27E8B9c33fB8c866d651E8AFD28233"
#!         }
#!       ],
#!       "expected": [
#!         "7"
#!       ]
#!     },
#!     {
#!       "name": "entry4",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "7"
#!           ],
#!           "caller": "0xDf32Eb4625fc2Ac74d8Cdfdc6063c3de3730a6A8"
#!         }
#!       ],
#!       "expected": [
#!         "99"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(param: uint8) -> uint256:
    for i: uint256 in range(0, 10):
        if param == 0 and i == 2:
            return i * 2 # 4
        for _: uint256 in range(1000000):
            if param == 1:
                return 5
            for j: uint8 in [10, 8, 6, 4, 2]:
                if param == 2 and j == 4:
                    return convert(param + j, uint256) # 6
            break
        if param == 3 and i == 7:
            return i
    return 99
