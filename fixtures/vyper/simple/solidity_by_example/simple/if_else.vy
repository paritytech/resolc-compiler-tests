#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "foo_1",
#!       "inputs": [
#!         {
#!           "method": "foo",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0xDe55aDa6a361a8025A49e9dcb56621Bd3D0967B4"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "foo_15",
#!       "inputs": [
#!         {
#!           "method": "foo",
#!           "calldata": [
#!             "15"
#!           ],
#!           "caller": "0xE940713b0570D9Dbd25038bd00A47470D81F96c2"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "foo_123132213123",
#!       "inputs": [
#!         {
#!           "method": "foo",
#!           "calldata": [
#!             "123132213123"
#!           ],
#!           "caller": "0x4fC4e94B72150D0904A3898CFA410c255253CE36"
#!         }
#!       ],
#!       "expected": [
#!         "2"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def foo(x: uint256) -> uint256:
    if x < 10:
        return 0
    elif x < 20:
        return 1
    else:
        return 2
