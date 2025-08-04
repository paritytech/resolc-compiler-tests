#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0x42d5aA0A507C883CD519c917046e639CAC157345"
#!         },
#!         {
#!           "method": "withdraw",
#!           "calldata": [
#!             "10"
#!           ],
#!           "caller": "0x42d5aA0A507C883CD519c917046e639CAC157345"
#!         },
#!         {
#!           "method": "balance_",
#!           "calldata": [],
#!           "caller": "0x42d5aA0A507C883CD519c917046e639CAC157345"
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
#!           "method": "GET_MAX_UINT",
#!           "calldata": [],
#!           "caller": "0x5f5ED6895F3886f2c1069AC9029D84Ec3C2590B7"
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
#!           "caller": "0x94616C1DA7Bf80B8e0635B92926EB55F9CAb4655"
#!         },
#!         {
#!           "method": "deposit",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0x94616C1DA7Bf80B8e0635B92926EB55F9CAb4655"
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
#!           "caller": "0xb2E0eAA8BD1bB1b727BC9A118c88E0f4a624AfE9"
#!         },
#!         {
#!           "method": "withdraw",
#!           "calldata": [
#!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
#!           ],
#!           "caller": "0xb2E0eAA8BD1bB1b727BC9A118c88E0f4a624AfE9"
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
MAX_UINT: constant(uint256) = max_value(uint256)

@external
def GET_MAX_UINT() -> uint256:
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
