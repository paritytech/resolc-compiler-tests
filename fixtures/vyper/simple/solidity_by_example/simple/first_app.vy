#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "init_value",
#!       "inputs": [
#!         {
#!           "method": "count",
#!           "calldata": [],
#!           "caller": "0x7920300eA5760cD2F40eE33eC00D3C9a15699928"
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
#!           "caller": "0x33ba3993dE0004947b67c45c416106554692AA52"
#!         },
#!         {
#!           "method": "count",
#!           "calldata": [],
#!           "caller": "0x33ba3993dE0004947b67c45c416106554692AA52"
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
#!           "caller": "0xf8C3666C96f6914AE8825636aD96864547C2393D"
#!         },
#!         {
#!           "method": "inc",
#!           "calldata": [],
#!           "caller": "0xf8C3666C96f6914AE8825636aD96864547C2393D"
#!         },
#!         {
#!           "method": "dec",
#!           "calldata": [],
#!           "caller": "0xf8C3666C96f6914AE8825636aD96864547C2393D"
#!         },
#!         {
#!           "method": "count",
#!           "calldata": [],
#!           "caller": "0xf8C3666C96f6914AE8825636aD96864547C2393D"
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
