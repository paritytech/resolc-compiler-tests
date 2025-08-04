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
#!           "caller": "0xC8385816C9c148Ddef119e91C9c1F3d06ED7d442"
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
#!           "caller": "0x52Fef3042dbB7d057e115fADD544eE7b15a76C86"
#!         },
#!         {
#!           "method": "count",
#!           "calldata": [],
#!           "caller": "0x52Fef3042dbB7d057e115fADD544eE7b15a76C86"
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
#!           "caller": "0xb01D62034b60bD5E7572c75f5289FAF5553a71e4"
#!         },
#!         {
#!           "method": "inc",
#!           "calldata": [],
#!           "caller": "0xb01D62034b60bD5E7572c75f5289FAF5553a71e4"
#!         },
#!         {
#!           "method": "dec",
#!           "calldata": [],
#!           "caller": "0xb01D62034b60bD5E7572c75f5289FAF5553a71e4"
#!         },
#!         {
#!           "method": "count",
#!           "calldata": [],
#!           "caller": "0xb01D62034b60bD5E7572c75f5289FAF5553a71e4"
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
