#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0xA1bEcbDC9814cC360C9a859eaccFDfB704CdDC8D"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42"
#!           ],
#!           "caller": "0xE07AF566007502BbC5b230091215571913d83839"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     },
#!     {
#!       "name": "ordinar_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0xb41916E356779d68800a4561774C76F35E4AdfBC"
#!         }
#!       ],
#!       "expected": [
#!         "-42"
#!       ]
#!     },
#!     {
#!       "name": "max_to_min",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "127"
#!           ],
#!           "caller": "0x53e94cC4377B2042f6ec66FbfEB00b578352F315"
#!         }
#!       ],
#!       "expected": [
#!         "-127"
#!       ]
#!     },
#!     {
#!       "name": "almost_min_to_max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-127"
#!           ],
#!           "caller": "0xDeC7F0B8419b04949665Fb3FfAbfCEed7547397A"
#!         }
#!       ],
#!       "expected": [
#!         "127"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: int8) -> int8:
    return -a
