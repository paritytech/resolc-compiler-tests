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
#!           "caller": "0x2624895D0ceE95C74ec99B081285121135BB2545"
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
#!           "caller": "0xFF2FD9017eeE4546A7754a285d0159020dB61473"
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
#!           "caller": "0xb59396E6A5fe0E92d5f1d17208027f86A867E403"
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
#!           "caller": "0xb9d88e5a29Db73D35c63FBD67eA70719A667b04E"
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
#!           "caller": "0x42A8E378eccd4606d141E7F9961b8B6c719a0f36"
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
