//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "deadbeef",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x5791Be3b6C29C7a74a43937AE4085e4afF3054D0"
//!         }
//!       ],
//!       "expected": [
//!         "84",
//!         "126"
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
                let x := calldataload(4)
                let double, triple := double_triple(x)
                mstore(0, double)
                mstore(32, triple)
                return(0, 64)
            }

            function double_triple(x) -> double, triple {
                double := mul(x, 2)
                triple := mul(x, 3)
            }
        }
    }
}
