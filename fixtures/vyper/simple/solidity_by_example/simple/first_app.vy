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
#!           "caller": "0x0d769734F92c24F2ab12CfCBa4eF9372AFef89D1"
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
#!           "caller": "0xf9548813CEbA4728E9f04bd8C499CC4DcAAD1f4F"
#!         },
#!         {
#!           "method": "count",
#!           "calldata": [],
#!           "caller": "0xf9548813CEbA4728E9f04bd8C499CC4DcAAD1f4F"
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
#!           "caller": "0x779Cd74EC2a8C58195271752CFa4429eF2c27E38"
#!         },
#!         {
#!           "method": "inc",
#!           "calldata": [],
#!           "caller": "0x779Cd74EC2a8C58195271752CFa4429eF2c27E38"
#!         },
#!         {
#!           "method": "dec",
#!           "calldata": [],
#!           "caller": "0x779Cd74EC2a8C58195271752CFa4429eF2c27E38"
#!         },
#!         {
#!           "method": "count",
#!           "calldata": [],
#!           "caller": "0x779Cd74EC2a8C58195271752CFa4429eF2c27E38"
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
