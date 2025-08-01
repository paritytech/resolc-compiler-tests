#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0x3da419B69B99DC3190767be05a763269075b27C6"
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
        abi_encode(a, method_id=method_id("a(uint256)")),
        revert_on_failure=False,
        max_outsize=32,
        )
    return success
