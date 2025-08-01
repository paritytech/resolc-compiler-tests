#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x74628CF5B374930c7B709f02F31e5c6624832c9D"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     }
#!   ]
#! }

@external
def a(x: uint256) -> uint256:
    return x

@external
def main(a: uint256) -> bool:
    success: bool = False
    response: Bytes[32] = b""
    success, response = raw_call(
        self,
        _abi_encode(a, method_id=method_id("a(uint256)")),
        revert_on_failure=False,
        max_outsize=32,
        )
    return success
