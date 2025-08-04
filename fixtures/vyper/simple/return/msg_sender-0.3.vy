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
#!           "caller": "0xFd6f0CbD2754Ff8eA8e715dc9Aace12A438D8F19",
#!           "calldata": []
#!         }
#!       ],
#!       "expected": [
#!         "0xFd6f0CbD2754Ff8eA8e715dc9Aace12A438D8F19"
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
#!           "caller": "0xD2385a74dBFd888ccd6C5476411A71757a2969eC"
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