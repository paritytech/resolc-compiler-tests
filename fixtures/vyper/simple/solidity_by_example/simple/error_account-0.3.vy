#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "ok",
#!       "inputs": [
#!         {
#!           "method": "deposit",
#!           "calldata": [
#!             "20"
#!           ],
#!           "caller": "0x568723a7B2fF75c9553cf7767021Ebc6D3643fB9"
#!         },
#!         {
#!           "method": "withdraw",
#!           "calldata": [
#!             "10"
#!           ],
#!           "caller": "0x568723a7B2fF75c9553cf7767021Ebc6D3643fB9"
#!         },
#!         {
#!           "method": "balance_",
#!           "calldata": [],
#!           "caller": "0x568723a7B2fF75c9553cf7767021Ebc6D3643fB9"
#!         }
#!       ],
#!       "expected": [
#!         "10"
#!       ]
#!     },
#!     {
#!       "name": "MAX_UINT",
#!       "inputs": [
#!         {
#!           "method": "MAX_UINT",
#!           "calldata": [],
#!           "caller": "0xD1c5d80626264AB9bc50A7030A2C7bB18F05c39b"
#!         }
#!       ],
#!       "expected": [
#!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
#!       ]
#!     },
#!     {
#!       "name": "overflow",
#!       "inputs": [
#!         {
#!           "method": "deposit",
#!           "calldata": [
#!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
#!           ],
#!           "caller": "0xA625FEb646626c2081178c9A93676d673e9495C6"
#!         },
#!         {
#!           "method": "deposit",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0xA625FEb646626c2081178c9A93676d673e9495C6"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "underflow",
#!       "inputs": [
#!         {
#!           "method": "deposit",
#!           "calldata": [
#!             "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe"
#!           ],
#!           "caller": "0xc4e161ab91A5f1525ce649FaB2F5FEf52B09d34E"
#!         },
#!         {
#!           "method": "withdraw",
#!           "calldata": [
#!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
#!           ],
#!           "caller": "0xc4e161ab91A5f1525ce649FaB2F5FEf52B09d34E"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [
#!           "0x08c379a000000000000000000000000000000000000000000000000000000000",
#!           "0x0000002000000000000000000000000000000000000000000000000000000000",
#!           "0x00000009556e646572666c6f7700000000000000000000000000000000000000",
#!           "0x0000000000000000000000000000000000000000000000000000000000000000"
#!         ],
#!         "exception": true
#!       }
#!     }
#!   ]
#! }

balance_: public(uint256)
MAX_UINT: constant(uint256) = (2**255 - 1) * 2 + 1

@external
def MAX_UINT() -> uint256:
    return MAX_UINT

@external
def deposit(_amount: uint256):
    oldBalance: uint256 = self.balance_
    newBalance: uint256 = self.balance_ + _amount

    # balance + _amount does not overflow if balance + _amount >= balance
    assert newBalance >= oldBalance, "Overflow"

    self.balance_ = newBalance

    assert self.balance_ >= oldBalance


@external
def withdraw(_amount: uint256):
    oldBalance: uint256 = self.balance_

    # balance - _amount does not underflow if balance >= _amount
    assert self.balance_ >= _amount, "Underflow"

    if self.balance_ < _amount:
        raise "Underflow"

    self.balance_ -= _amount

    assert self.balance_ <= oldBalance
