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
#!           "caller": "0x76C685003EE7903b09eC2898FA7C3a09250519a4"
#!         },
#!         {
#!           "method": "getLength",
#!           "calldata": [],
#!           "expected": [
#!             "1"
#!           ],
#!           "caller": "0x76C685003EE7903b09eC2898FA7C3a09250519a4"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0x76C685003EE7903b09eC2898FA7C3a09250519a4"
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
#!           "caller": "0x43420C163dbC460Ba847A8187d463Df1F6b90264"
#!         },
#!         {
#!           "method": "push",
#!           "calldata": [
#!             "523542342"
#!           ],
#!           "caller": "0x43420C163dbC460Ba847A8187d463Df1F6b90264"
#!         },
#!         {
#!           "method": "pop_",
#!           "calldata": [],
#!           "caller": "0x43420C163dbC460Ba847A8187d463Df1F6b90264"
#!         },
#!         {
#!           "method": "getLength",
#!           "calldata": [],
#!           "expected": [
#!             "1"
#!           ],
#!           "caller": "0x43420C163dbC460Ba847A8187d463Df1F6b90264"
#!         },
#!         {
#!           "method": "push",
#!           "calldata": [
#!             "78347834"
#!           ],
#!           "caller": "0x43420C163dbC460Ba847A8187d463Df1F6b90264"
#!         },
#!         {
#!           "method": "push",
#!           "calldata": [
#!             "23515365423543245"
#!           ],
#!           "caller": "0x43420C163dbC460Ba847A8187d463Df1F6b90264"
#!         },
#!         {
#!           "method": "remove",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0x43420C163dbC460Ba847A8187d463Df1F6b90264"
#!         },
#!         {
#!           "method": "getLength",
#!           "calldata": [],
#!           "expected": [
#!             "3"
#!           ],
#!           "caller": "0x43420C163dbC460Ba847A8187d463Df1F6b90264"
#!         },
#!         {
#!           "method": "getArr",
#!           "calldata": [],
#!           "caller": "0x43420C163dbC460Ba847A8187d463Df1F6b90264"
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
#!           "caller": "0x3e15cf0B90Fb9513B7Fa1500206B7ED09Eaf7214"
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
#!           "caller": "0xfcE6D381D5Dc112c38E6f5199A7D66D0517a1421"
#!         },
#!         {
#!           "method": "arr2",
#!           "calldata": [
#!             "1"
#!           ],
#!           "expected": [
#!             "2"
#!           ],
#!           "caller": "0xfcE6D381D5Dc112c38E6f5199A7D66D0517a1421"
#!         },
#!         {
#!           "method": "arr2",
#!           "calldata": [
#!             "2"
#!           ],
#!           "caller": "0xfcE6D381D5Dc112c38E6f5199A7D66D0517a1421"
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
#!           "caller": "0x260Cc7F22959FC344A1E194AfAaFbAB46A104b7F"
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
#!           "caller": "0x326CB86cbE31CeD86A8b6e895FAe307b376a3Cdc"
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
