#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "#deployer",
#!           "calldata": [
#!             "0x2e64A4C6D1a11bb8A9de3c54a7D8D9b35702F0ef"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ],
#!           "caller": "0x2e64A4C6D1a11bb8A9de3c54a7D8D9b35702F0ef"
#!         },
#!         {
#!           "method": "add_fees",
#!           "calldata": [
#!             "1"
#!           ],
#!           "value": "1 wei",
#!           "expected": [],
#!           "caller": "0x2e64A4C6D1a11bb8A9de3c54a7D8D9b35702F0ef"
#!         },
#!         {
#!           "method": "add_fees",
#!           "calldata": [
#!             "2"
#!           ],
#!           "value": "1 wei",
#!           "expected": [],
#!           "caller": "0x2e64A4C6D1a11bb8A9de3c54a7D8D9b35702F0ef"
#!         },
#!         {
#!           "method": "add_fees",
#!           "calldata": [
#!             "3"
#!           ],
#!           "value": "1 wei",
#!           "expected": [],
#!           "caller": "0x2e64A4C6D1a11bb8A9de3c54a7D8D9b35702F0ef"
#!         },
#!         {
#!           "method": "add_fees",
#!           "calldata": [
#!             "4"
#!           ],
#!           "value": "1 wei",
#!           "expected": [],
#!           "caller": "0x2e64A4C6D1a11bb8A9de3c54a7D8D9b35702F0ef"
#!         },
#!         {
#!           "method": "claim_fees",
#!           "caller": "0x2e64A4C6D1a11bb8A9de3c54a7D8D9b35702F0ef",
#!           "calldata": [
#!             "0"
#!           ],
#!           "expected": [
#!             "1"
#!           ]
#!         },
#!         {
#!           "method": "claim_fees",
#!           "caller": "0x2e64A4C6D1a11bb8A9de3c54a7D8D9b35702F0ef",
#!           "calldata": [
#!             "0"
#!           ],
#!           "expected": [
#!             "4"
#!           ]
#!         }
#!       ],
#!       "expected": [
#!         "100"
#!       ]
#!     }
#!   ]
#! }

fees: uint256[10]
admin: address

@deploy
def __init__(admin: address):
    self.admin = admin

@external
def claim_fees(x: uint256) -> uint256:
    sum: uint256 = 0
    if msg.sender != self.admin:
        # Users can only call this function with x < 2 and claim the sum of 0 and 1.
        for i: uint256 in range(0, 2):
            sum += self.fees[i]
    else:
        # Admin can claim everything.
        for i: uint256 in range(0, 10):
            sum += self.fees[i]
    return sum

@external
@payable
def add_fees(slot: uint256):
    self.fees[slot] = msg.value