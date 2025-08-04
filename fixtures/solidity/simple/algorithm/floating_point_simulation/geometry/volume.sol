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
//!           "caller": "0x418a8146486f42D8014237B39b2D247AeE4ebd08"
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
//!           "caller": "0x794da7B84b0E7A487124406d5c3b1ef5A4D254c9"
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
//!           "caller": "0x6c81EC12331bff45e19237F6dC1156C6ab2bB5B1"
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
//!           "caller": "0x5446C773589AfAafE9f44343363A6810227280aB"
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