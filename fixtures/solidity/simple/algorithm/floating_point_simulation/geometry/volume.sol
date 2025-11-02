//! {
//!   "cases": [
//!     {
//!       "name": "cube1",
//!       "inputs": [
//!         {
//!           "method": "cube",
//!           "calldata": [
//!             "3"
//!           ],
//!           "caller": "0x5127c7930a55c9e8e61082e2308899ef2ab815d9"
//!         }
//!       ],
//!       "expected": [
//!         "27"
//!       ]
//!     },
//!     {
//!       "name": "cube2",
//!       "inputs": [
//!         {
//!           "method": "cube",
//!           "calldata": [
//!             "312174"
//!           ],
//!           "caller": "0x3ce0a933dc37ed37b8d7c4577fd2c705ef6c75ac"
//!         }
//!       ],
//!       "expected": [
//!         "30422169911604024"
//!       ]
//!     },
//!     {
//!       "name": "sphere1",
//!       "inputs": [
//!         {
//!           "method": "sphere",
//!           "calldata": [
//!             "7"
//!           ],
//!           "caller": "0xb70d8c46a828d05c7b2ab00a0dbfe300a86e0cff"
//!         }
//!       ],
//!       "expected": [
//!         "143675"
//!       ]
//!     },
//!     {
//!       "name": "sphere2",
//!       "inputs": [
//!         {
//!           "method": "sphere",
//!           "calldata": [
//!             "71249"
//!           ],
//!           "caller": "0xfbd45023984259c1de3a7170fa97b037309221ca"
//!         }
//!       ],
//!       "expected": [
//!         "151504289520102405"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.19;
pragma experimental ABIEncoderV2;

contract Test {
    uint128 constant EPS = 1E6;
    // PI * EPS^3
    uint128 constant PI = 3141592653589793238;
    uint128 constant PRECISION = 100;

    struct Cube {
        uint128 a;
    }

    struct Sphere {
        uint128 r;
    }

    function cube(Cube memory cube) public pure returns(uint64) {
        return uint64(cubeVolume(cube));
    }

    function sphere(Sphere memory sphere) public pure returns(uint64) {
        // volume * PRECISION
        return uint64(sphereVolume(sphere, PI) * PRECISION / EPS / EPS / EPS);
    }

    function cubeVolume(Cube memory cube) private pure returns(uint128) {
        return cube.a * cube.a * cube.a;
    }

    function sphereVolume(Sphere memory sphere, uint128 pi) private pure returns(uint128) {
        return 4 * pi * sphere.r * sphere.r * sphere.r / 3;
    }

}