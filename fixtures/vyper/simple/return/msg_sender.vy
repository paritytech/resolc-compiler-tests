#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "without_argument",
#!       "inputs": [
#!         {
#!           "method": "main()",
#!           "caller": "0xC25ac49155d3c973449A17e0C00798e0f2E78f14",
#!           "calldata": []
#!         }
#!       ],
#!       "expected": [
#!         "0xC25ac49155d3c973449A17e0C00798e0f2E78f14"
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
#!           "caller": "0xb4ee2AE065428dee4F2e1427B2E5d5A65F166975"
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