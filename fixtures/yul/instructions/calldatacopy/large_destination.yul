//! {
//!   "targets": [
//!     "eravm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [],
//!           "caller": "0x4C2435f2D9192762210e255be7e8b4E5F4e5e26D"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
                calldatacopy(3334353453452342342354355544445321191012012, 122, 0)
                return(0, 32)
            }
        }
    }
}
