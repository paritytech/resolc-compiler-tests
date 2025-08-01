#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "without_argument",
#!       "inputs": [
#!         {
#!           "method": "main()",
#!           "caller": "0xb2D693EB45F43190ba5CF12377B1591e3315e9d9",
#!           "calldata": []
#!         }
#!       ],
#!       "expected": [
#!         "0xb2D693EB45F43190ba5CF12377B1591e3315e9d9"
#!       ]
#!     },
#!     {
#!       "name": "with_argument",
#!       "inputs": [
#!         {
#!           "method": "main(address)",
#!           "calldata": [
#!             "0xdeadbeef00000000000000000000000000000042"
#!           ],
#!           "caller": "0x4d2f3cF935d41132fA3850010F4711Bdc4e9dc9B"
#!         }
#!       ],
#!       "expected": [
#!         "0xdeadbeef00000000000000000000000000000042"
#!       ]
#!     }
#!   ]
#! }

# Report https://linear.app/matterlabs/issue/CPR-500/floating-bug-with-a-default-value-for-the-parameter-as-msgsender

@external
def main(
    a: address = msg.sender,
) -> address:
    return a