#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x7b567e3aFd17f86fFf083D4FAe0753dAca612BA1"
#!         }
#!       ],
#!       "expected": [
#!         "1008"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "64"
#!           ],
#!           "caller": "0x076C684Dfb33eaeaD7C161A9b980A364CF183510"
#!         }
#!       ],
#!       "expected": [
#!         "1536"
#!       ]
#!     },
#!     {
#!       "name": "third",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1000000"
#!           ],
#!           "caller": "0x1f902fceECDBF8644798A75bF28F9EAfF1b7cf12"
#!         }
#!       ],
#!       "expected": [
#!         "24000000"
#!       ]
#!     }
#!   ]
#! }


struct Data:
    a: uint256

@internal
@pure
def _new(a: uint256) -> Data:
    return Data({a: a})

@internal
@pure
def double(data: Data) -> Data:
    return Data({a: data.a * 2})

@internal
@pure
def triple(data: Data) -> Data:
    return Data({a: data.a * 3})

@internal
@pure
def quadruple(data: Data) -> Data:
    return Data({a: data.a * 4})

@internal
@pure
def intoInner(data: Data) -> uint256:
    return data.a

@external
def main(witness: uint256) -> uint256:
    return self.intoInner(
        self.quadruple(
            self.triple(
                self.double(
                    self._new(witness)
                )
            )
        )
    )
