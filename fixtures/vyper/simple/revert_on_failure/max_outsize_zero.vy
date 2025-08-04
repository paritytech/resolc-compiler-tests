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
#!           "caller": "0x6afdcF3D5f7C1E66bcF2611e5aC652df48eb4f0C"
#!         }
#!       ],
#!       "expected": [
#!         {
#!           "compiler_version": "=0.3.3",
#!           "return_data": [
#!             "0"
#!           ]
#!         },
#!         {
#!           "compiler_version": ">=0.3.9",
#!           "return_data": [
#!             "1"
#!           ]
#!         }
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
    success = raw_call(
        self,
        abi_encode(a, method_id=method_id("a(uint256)")),
        revert_on_failure=False,
        )
    return success
