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
//!           "caller": "0x673C638147fe91e4277646d86D5AE82f775EeA5C"
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
//!           "caller": "0xf472086186382Fca55CD182DE196520aBd76F69d"
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
//!           "caller": "0x5AE58D2bc5145bff0c1bEc0f32BfC2D079BC66ed"
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
//!           "caller": "0x2B29Bea668B044b2b355C370f85b729bcb43EC40"
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
//!           "caller": "0x3797126345fB5Fb6A37629Db55eC692173CfB458"
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
//!           "caller": "0xe6869CC98283aB53E8a1a5312857Ef0bE9d189FE"
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