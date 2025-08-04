#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "push",
#!           "calldata": [
#!             "10"
#!           ],
#!           "caller": "0x2C0644e40f8bCf1B16dD3b26Ef5cdC515Ae1DaED"
#!         },
#!         {
#!           "method": "getLength",
#!           "calldata": [],
#!           "expected": [
#!             "1"
#!           ],
#!           "caller": "0x2C0644e40f8bCf1B16dD3b26Ef5cdC515Ae1DaED"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0x2C0644e40f8bCf1B16dD3b26Ef5cdC515Ae1DaED"
#!         }
#!       ],
#!       "expected": [
#!         "10"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "push",
#!           "calldata": [
#!             "37848742"
#!           ],
#!           "caller": "0x8a9cf8f0FE66f007F3f6D7E23Ad274f5d3C24C32"
#!         },
#!         {
#!           "method": "push",
#!           "calldata": [
#!             "523542342"
#!           ],
#!           "caller": "0x8a9cf8f0FE66f007F3f6D7E23Ad274f5d3C24C32"
#!         },
#!         {
#!           "method": "pop_",
#!           "calldata": [],
#!           "caller": "0x8a9cf8f0FE66f007F3f6D7E23Ad274f5d3C24C32"
#!         },
#!         {
#!           "method": "getLength",
#!           "calldata": [],
#!           "expected": [
#!             "1"
#!           ],
#!           "caller": "0x8a9cf8f0FE66f007F3f6D7E23Ad274f5d3C24C32"
#!         },
#!         {
#!           "method": "push",
#!           "calldata": [
#!             "78347834"
#!           ],
#!           "caller": "0x8a9cf8f0FE66f007F3f6D7E23Ad274f5d3C24C32"
#!         },
#!         {
#!           "method": "push",
#!           "calldata": [
#!             "23515365423543245"
#!           ],
#!           "caller": "0x8a9cf8f0FE66f007F3f6D7E23Ad274f5d3C24C32"
#!         },
#!         {
#!           "method": "remove",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0x8a9cf8f0FE66f007F3f6D7E23Ad274f5d3C24C32"
#!         },
#!         {
#!           "method": "getLength",
#!           "calldata": [],
#!           "expected": [
#!             "3"
#!           ],
#!           "caller": "0x8a9cf8f0FE66f007F3f6D7E23Ad274f5d3C24C32"
#!         },
#!         {
#!           "method": "getArr",
#!           "calldata": [],
#!           "caller": "0x8a9cf8f0FE66f007F3f6D7E23Ad274f5d3C24C32"
#!         }
#!       ],
#!       "expected": [
#!         "0x20",
#!         "3",
#!         "37848742",
#!         "0",
#!         "23515365423543245"
#!       ]
#!     },
#!     {
#!       "name": "popEmpty",
#!       "inputs": [
#!         {
#!           "method": "pop_",
#!           "calldata": [],
#!           "caller": "0x16057df6a86079CeE4E61975A075FCe58A0D7c7F"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "defaultGetter",
#!       "inputs": [
#!         {
#!           "method": "arr2",
#!           "calldata": [
#!             "0"
#!           ],
#!           "expected": [
#!             "1"
#!           ],
#!           "caller": "0xeF12a0f0c1C3C916992B1ceE95Cb48043871B923"
#!         },
#!         {
#!           "method": "arr2",
#!           "calldata": [
#!             "1"
#!           ],
#!           "expected": [
#!             "2"
#!           ],
#!           "caller": "0xeF12a0f0c1C3C916992B1ceE95Cb48043871B923"
#!         },
#!         {
#!           "method": "arr2",
#!           "calldata": [
#!             "2"
#!           ],
#!           "caller": "0xeF12a0f0c1C3C916992B1ceE95Cb48043871B923"
#!         }
#!       ],
#!       "expected": [
#!         "3"
#!       ]
#!     },
#!     {
#!       "name": "fixedSizeArray",
#!       "inputs": [
#!         {
#!           "method": "myFixedSizeArr",
#!           "calldata": [
#!             "9"
#!           ],
#!           "caller": "0x49d5A396c754BCc2E81A399eD427C7828235B9ae"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "examples",
#!       "inputs": [
#!         {
#!           "method": "examples",
#!           "calldata": [],
#!           "caller": "0x8d28a2ab1E95349E192A40b45f7e01e501FEAFC5"
#!         }
#!       ],
#!       "expected": []
#!     }
#!   ]
#! }

# Several ways to initialize an array
arr: public(DynArray[uint256, 10])
arr2: public(DynArray[uint256, 10])
@external
def __init__():
    self.arr2 = [1, 2, 3]
# Fixed sized array, all elements initialize to 0
myFixedSizeArr: public(uint256[10])

@external
@view
def get(i: uint256) -> uint256:
    return self.arr[i]

# Solidity can return the entire array.
# But this function should be avoided for
# arrays that can grow indefinitely in length.
@external
@view
def getArr() -> DynArray[uint256, 10]:
    return self.arr

@external
def push(i: uint256):
    # Append to array
    # This will increase the array length by 1.
    self.arr.append(i)

@external
def pop_():
    # Remove last element from array
    # This will decrease the array length by 1
    self.arr.pop()

@external
@view
def getLength() -> uint256:
    return len(self.arr)

@external
def remove(index: uint256):
    # Delete does not change the array length.
    # It resets the value at index to it's default value,
    # in this case 0
    self.arr[index] = empty(uint256)

@external
def examples():
    # create array in memory, only fixed size can be created
    a: DynArray[uint256, 10] = [0, 0, 0, 0, 0]
