#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "require_short",
#!       "inputs": [
#!         {
#!           "method": "require_short",
#!           "calldata": [
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0xe47Ce25b88cE3C01057c89420363493890Aa6820"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [
#!           "0x08C379A000000000000000000000000000000000000000000000000000000000",
#!           "0x0000002000000000000000000000000000000000000000000000000000000000",
#!           "0x0000000573686F72740000000000000000000000000000000000000000000000",
#!           "0x0000000000000000000000000000000000000000000000000000000000000000"
#!         ],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "require_long",
#!       "inputs": [
#!         {
#!           "method": "require_long",
#!           "calldata": [
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0x7bBeaB6200B8b4DCF798628fD0B7b98eDD48cc6D"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [
#!           "0x08C379A000000000000000000000000000000000000000000000000000000000",
#!           "0x0000002000000000000000000000000000000000000000000000000000000000",
#!           "0x000000DD6C6C6F6E676C6F6E676C6F6E6774657874626C6F6E676C6F6E676C6F",
#!           "0x6E6774657874626C6F6E676C6F6E676C6F6E6774657874626C6F6E676C6F6E67",
#!           "0x6C6F6E6774657874626C6F6E676C6F6E676C6F6E6774657874626C6F6E676C6F",
#!           "0x6E676C6F6E6774657874626C6F6E676C6F6E676C6F6E6774657874626C6F6E67",
#!           "0x6C6F6E676C6F6E6774657874626C6F6E676C6F6E676C6F6E6774657874626C6F",
#!           "0x6E676C6F6E676C6F6E6774657874626C6F6E676C6F6E676C6F6E677465787462",
#!           "0x6C6F6E676C6F6E676C6F6E6774657874626F6E676C6F6E676C6F6E6774657874",
#!           "0x6200000000000000000000000000000000000000000000000000000000000000"
#!         ],
#!         "exception": true
#!       }
#!     }
#!   ]
#! }

@external
@pure
def require_short(v: uint8[11]):
    assert False, "short"

@external
@pure
def require_long(v: uint8[11]):
    assert False, "llonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextblonglonglongtextbonglonglongtextb"
