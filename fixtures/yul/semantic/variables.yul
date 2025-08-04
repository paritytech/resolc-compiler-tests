//! {
//!   "cases": [
//!     {
//!       "name": "declare_without_value",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xbda7FfBB5C0C96EC3092172f58f1E1D60629CFfE"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "declare_tuple_without_value",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x1eFf09B9aCD7DdE979d9C0d55b31395580dd1CC6"
//!         }
//!       ],
//!       "expected": [
//!         "0",
//!         "0",
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "declare_with_value",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "2"
//!           ],
//!           "caller": "0x5337f094D625F0bF391e204cB2b5051d454Faaf8"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "declare_tuple_with_value",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "3"
//!           ],
//!           "caller": "0xd64FE69800e4E0b9735861549e33b8AD7ebb968e"
//!         }
//!       ],
//!       "expected": [
//!         "1",
//!         "2",
//!         "3"
//!       ]
//!     },
//!     {
//!       "name": "assign",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "4"
//!           ],
//!           "caller": "0x235E6A88416b69ad9Fb200Ecf0456E0552C13667"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "assign_tuple",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "5"
//!           ],
//!           "caller": "0x4c7d86fF7fD6081C3A80222A43957b54A7974963"
//!         }
//!       ],
//!       "expected": [
//!         "1",
//!         "2",
//!         "3"
//!       ]
//!     }
//!   ]
//! }

object "Test" {
    code {
        {
            let size := datasize("Test_deployed")
            codecopy(0, dataoffset("Test_deployed"), size)
            return(0, size)
        }
    }

    object "Test_deployed" {
        code {
            {
                switch calldataload(0)
                // declare_without_value
                case 0 {
                    let x
                    mstore(0, x)
                    return(0, 32)
                }
                // declare_tuple_without_value
                case 1 {
                    let x, y, z
                    mstore(0, x)
                    mstore(32, y)
                    mstore(64, z)
                    return(0, 96)
                }
                // declare_with_value
                case 2 {
                    let x := 0xdeadbeef
                    mstore(0, x)
                    return(0, 32)
                }
                // declare_tuple_with_value
                case 3 {
                    function f() -> _1, _2, _3 {
                        _1 := 1
                        _2 := 2
                        _3 := 3
                    }
                    let x, y, z := f()
                    mstore(0, x)
                    mstore(32, y)
                    mstore(64, z)
                    return(0, 96)
                }
                // assign
                case 4 {
                    let x
                    x := 0xdeadbeef
                    mstore(0, x)
                    return(0, 32)
                }
                // assign_tuple
                case 5 {
                    function f() -> _1, _2, _3 {
                        _1 := 1
                        _2 := 2
                        _3 := 3
                    }
                    let x, y, z
                    x, y, z := f()
                    mstore(0, x)
                    mstore(32, y)
                    mstore(64, z)
                    return(0, 96)
                }
            }
        }
    }
}