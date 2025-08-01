#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0x06EbB383521934e3e8D0e9b28Ec340695AFB68c5"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "4"
#!           ],
#!           "caller": "0xe01690f0b71344370f656633Ad65Ab02354bc6D0"
#!         }
#!       ],
#!       "expected": [
#!         "81"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-4"
#!           ],
#!           "caller": "0xD8B55153a5B7261BAAC87924ba46b9cF90609bc0"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "80"
#!           ],
#!           "caller": "0xC299181166D748C157b47B2a16747E98D1f6dF4b"
#!         }
#!       ],
#!       "expected": [
#!         "147808829414345923316083210206383297601"
#!       ]
#!     },
#!     {
#!       "name": "overflow",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "100"
#!           ],
#!           "caller": "0x7dcc4bA8fCD9622b67Ca4420F10344fCAB966163"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "overflow_minimal",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "81"
#!           ],
#!           "caller": "0x0d69FAeeAB91d96f270462F097D34e678138C44b"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "max_pow_overflow",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "340282366920938463463374607431768211455"
#!           ],
#!           "caller": "0x11D64305030EeFE919d8A16eCBa0Db171a847996"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     }
#!   ]
#! }

@external
@pure
def main(a: int128) -> int128:
    return (-3) ** a
