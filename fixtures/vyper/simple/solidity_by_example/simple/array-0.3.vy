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
#!           "caller": "0x95064Ce6845B3D4c96Da87BE3a5D662B0869cdfB"
#!         },
#!         {
#!           "method": "getLength",
#!           "calldata": [],
#!           "expected": [
#!             "1"
#!           ],
#!           "caller": "0x95064Ce6845B3D4c96Da87BE3a5D662B0869cdfB"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0x95064Ce6845B3D4c96Da87BE3a5D662B0869cdfB"
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
#!           "caller": "0x82392A44147eC8eeDaed9BC10290c240b7ED1A9C"
#!         },
#!         {
#!           "method": "push",
#!           "calldata": [
#!             "523542342"
#!           ],
#!           "caller": "0x82392A44147eC8eeDaed9BC10290c240b7ED1A9C"
#!         },
#!         {
#!           "method": "pop_",
#!           "calldata": [],
#!           "caller": "0x82392A44147eC8eeDaed9BC10290c240b7ED1A9C"
#!         },
#!         {
#!           "method": "getLength",
#!           "calldata": [],
#!           "expected": [
#!             "1"
#!           ],
#!           "caller": "0x82392A44147eC8eeDaed9BC10290c240b7ED1A9C"
#!         },
#!         {
#!           "method": "push",
#!           "calldata": [
#!             "78347834"
#!           ],
#!           "caller": "0x82392A44147eC8eeDaed9BC10290c240b7ED1A9C"
#!         },
#!         {
#!           "method": "push",
#!           "calldata": [
#!             "23515365423543245"
#!           ],
#!           "caller": "0x82392A44147eC8eeDaed9BC10290c240b7ED1A9C"
#!         },
#!         {
#!           "method": "remove",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0x82392A44147eC8eeDaed9BC10290c240b7ED1A9C"
#!         },
#!         {
#!           "method": "getLength",
#!           "calldata": [],
#!           "expected": [
#!             "3"
#!           ],
#!           "caller": "0x82392A44147eC8eeDaed9BC10290c240b7ED1A9C"
#!         },
#!         {
#!           "method": "getArr",
#!           "calldata": [],
#!           "caller": "0x82392A44147eC8eeDaed9BC10290c240b7ED1A9C"
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
#!           "caller": "0xbBcdd86968f6DFf415c6337cAAeFf20AbD8eA0A5"
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
#!           "caller": "0xEa13B153631530a445accd802965eCAfe0537F92"
#!         },
#!         {
#!           "method": "arr2",
#!           "calldata": [
#!             "1"
#!           ],
#!           "expected": [
#!             "2"
#!           ],
#!           "caller": "0xEa13B153631530a445accd802965eCAfe0537F92"
#!         },
#!         {
#!           "method": "arr2",
#!           "calldata": [
#!             "2"
#!           ],
#!           "caller": "0xEa13B153631530a445accd802965eCAfe0537F92"
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
#!           "caller": "0x96d3A67031abD9a6a672cF27723ff23B39817483"
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
#!           "caller": "0x9A8D0DcBb84Ae981cDE3B095131A2D9969a8072F"
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
