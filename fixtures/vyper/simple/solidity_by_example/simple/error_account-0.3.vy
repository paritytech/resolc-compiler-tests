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
#!           "caller": "0x658075d70eF97369aE168354D77A1fC97BbbbCd4"
#!         },
#!         {
#!           "method": "withdraw",
#!           "calldata": [
#!             "10"
#!           ],
#!           "caller": "0x658075d70eF97369aE168354D77A1fC97BbbbCd4"
#!         },
#!         {
#!           "method": "balance_",
#!           "calldata": [],
#!           "caller": "0x658075d70eF97369aE168354D77A1fC97BbbbCd4"
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
#!           "caller": "0xeff8dE6Aad6dA7AfE57729F5F4ED54e077d1D762"
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
#!           "caller": "0xA72e5Aa1f83d11C449681bA051f3363D32eb5778"
#!         },
#!         {
#!           "method": "deposit",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0xA72e5Aa1f83d11C449681bA051f3363D32eb5778"
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
#!           "caller": "0xd914885262093EE7722F83c69a5B838d0a15452C"
#!         },
#!         {
#!           "method": "withdraw",
#!           "calldata": [
#!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
#!           ],
#!           "caller": "0xd914885262093EE7722F83c69a5B838d0a15452C"
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
