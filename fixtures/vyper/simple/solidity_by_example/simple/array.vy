#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0x423E89Af95FD0aa1c2913D7e6a6C3C5f3E7616B4"
#!         },
#!         {
#!           "method": "getLength",
#!           "calldata": [],
#!           "expected": [
#!             "1"
#!           ],
#!           "caller": "0x423E89Af95FD0aa1c2913D7e6a6C3C5f3E7616B4"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0x423E89Af95FD0aa1c2913D7e6a6C3C5f3E7616B4"
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
#!           "caller": "0xeb7EA324FfC497e5FD90412Bd3185E3E5D13c3ca"
#!         },
#!         {
#!           "method": "push",
#!           "calldata": [
#!             "523542342"
#!           ],
#!           "caller": "0xeb7EA324FfC497e5FD90412Bd3185E3E5D13c3ca"
#!         },
#!         {
#!           "method": "pop_",
#!           "calldata": [],
#!           "caller": "0xeb7EA324FfC497e5FD90412Bd3185E3E5D13c3ca"
#!         },
#!         {
#!           "method": "getLength",
#!           "calldata": [],
#!           "expected": [
#!             "1"
#!           ],
#!           "caller": "0xeb7EA324FfC497e5FD90412Bd3185E3E5D13c3ca"
#!         },
#!         {
#!           "method": "push",
#!           "calldata": [
#!             "78347834"
#!           ],
#!           "caller": "0xeb7EA324FfC497e5FD90412Bd3185E3E5D13c3ca"
#!         },
#!         {
#!           "method": "push",
#!           "calldata": [
#!             "23515365423543245"
#!           ],
#!           "caller": "0xeb7EA324FfC497e5FD90412Bd3185E3E5D13c3ca"
#!         },
#!         {
#!           "method": "remove",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0xeb7EA324FfC497e5FD90412Bd3185E3E5D13c3ca"
#!         },
#!         {
#!           "method": "getLength",
#!           "calldata": [],
#!           "expected": [
#!             "3"
#!           ],
#!           "caller": "0xeb7EA324FfC497e5FD90412Bd3185E3E5D13c3ca"
#!         },
#!         {
#!           "method": "getArr",
#!           "calldata": [],
#!           "caller": "0xeb7EA324FfC497e5FD90412Bd3185E3E5D13c3ca"
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
#!           "caller": "0x5AC88b14BeF03D10D7E33D7A6f74c8B4A14E6603"
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
#!           "caller": "0x524E6d3cbe36B2Cb683D0d6b13CA7F64027f96b2"
#!         },
#!         {
#!           "method": "arr2",
#!           "calldata": [
#!             "1"
#!           ],
#!           "expected": [
#!             "2"
#!           ],
#!           "caller": "0x524E6d3cbe36B2Cb683D0d6b13CA7F64027f96b2"
#!         },
#!         {
#!           "method": "arr2",
#!           "calldata": [
#!             "2"
#!           ],
#!           "caller": "0x524E6d3cbe36B2Cb683D0d6b13CA7F64027f96b2"
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
#!           "caller": "0xFd0E23d31b3a846e3ec763430ed26C6DF9623621"
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
#!           "caller": "0x961e4523d797855a15587652be082516Abbbb069"
#!         }
#!       ],
#!       "expected": []
#!     }
#!   ]
#! }

# Several ways to initialize an array
arr: public(DynArray[uint256, 10])
arr2: public(DynArray[uint256, 10])
@deploy
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
# arrays that can grow indefinitely: uint256 in length.
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
    #: uint256 in this case 0
    self.arr[index] = empty(uint256)

@external
def examples():
    # create array: uint256 in memory, only fixed size can be created
    a: DynArray[uint256, 10] = [0, 0, 0, 0, 0]
