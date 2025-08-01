#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "init_value",
#!       "inputs": [
#!         {
#!           "method": "count",
#!           "calldata": [],
#!           "caller": "0x02D2170E3c1031F5601d446F0cB44C3957245e9f"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "inc",
#!           "calldata": [],
#!           "caller": "0x64AA32418db9BFe4EF21d03d101489aD56a2FcF0"
#!         },
#!         {
#!           "method": "count",
#!           "calldata": [],
#!           "caller": "0x64AA32418db9BFe4EF21d03d101489aD56a2FcF0"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "inc",
#!           "calldata": [],
#!           "caller": "0xFcF215a354478C86fF5FbEAd9F585476589B2ED9"
#!         },
#!         {
#!           "method": "inc",
#!           "calldata": [],
#!           "caller": "0xFcF215a354478C86fF5FbEAd9F585476589B2ED9"
#!         },
#!         {
#!           "method": "dec",
#!           "calldata": [],
#!           "caller": "0xFcF215a354478C86fF5FbEAd9F585476589B2ED9"
#!         },
#!         {
#!           "method": "count",
#!           "calldata": [],
#!           "caller": "0xFcF215a354478C86fF5FbEAd9F585476589B2ED9"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     }
#!   ]
#! }

count: public(uint256)

# Function to get the current count
@external
@view
def get() -> uint256:
    return self.count

# Function to increment count by 1
@external
def inc():
    self.count += 1

# Function to decrement count by 1
@external
def dec():
    self.count -= 1
