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
#!           "caller": "0x92720eD65651Aab9E2FB397a4c6505fEB5B04645",
#!           "calldata": []
#!         }
#!       ],
#!       "expected": [
#!         "0x92720eD65651Aab9E2FB397a4c6505fEB5B04645"
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
#!           "caller": "0x2312836e0762CB6f58AbFf4022cb40C89a8205fa"
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