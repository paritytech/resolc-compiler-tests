#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "#deployer",
#!           "calldata": [
#!             "0xfC4575d11fe0F22150339C7FD436eBc315db8358"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ],
#!           "caller": "0xfC4575d11fe0F22150339C7FD436eBc315db8358"
#!         },
#!         {
#!           "method": "add_fees",
#!           "calldata": [
#!             "1"
#!           ],
#!           "value": "1 wei",
#!           "expected": [],
#!           "caller": "0xfC4575d11fe0F22150339C7FD436eBc315db8358"
#!         },
#!         {
#!           "method": "add_fees",
#!           "calldata": [
#!             "2"
#!           ],
#!           "value": "1 wei",
#!           "expected": [],
#!           "caller": "0xfC4575d11fe0F22150339C7FD436eBc315db8358"
#!         },
#!         {
#!           "method": "add_fees",
#!           "calldata": [
#!             "3"
#!           ],
#!           "value": "1 wei",
#!           "expected": [],
#!           "caller": "0xfC4575d11fe0F22150339C7FD436eBc315db8358"
#!         },
#!         {
#!           "method": "add_fees",
#!           "calldata": [
#!             "4"
#!           ],
#!           "value": "1 wei",
#!           "expected": [],
#!           "caller": "0xfC4575d11fe0F22150339C7FD436eBc315db8358"
#!         },
#!         {
#!           "method": "claim_fees",
#!           "caller": "0xe00ac64Dae6f1073958C948aDeD0204379c77cd6",
#!           "calldata": [
#!             "0"
#!           ],
#!           "expected": [
#!             "1"
#!           ]
#!         },
#!         {
#!           "method": "claim_fees",
#!           "caller": "0xfC4575d11fe0F22150339C7FD436eBc315db8358",
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

@external
def __init__(admin: address):
    self.admin = admin

@external
def claim_fees(x: uint256) -> uint256:
    sum: uint256 = 0
    if msg.sender != self.admin:
        # Users can only call this function with x < 2 and claim the sum of 0 and 1.
        for i in range(0, 2):
            sum += self.fees[i]
    else:
        # Admin can claim everything.
        for i in range(0, 10):
            sum += self.fees[i]
    return sum

@external
@payable
def add_fees(slot: uint256):
    self.fees[slot] = msg.value