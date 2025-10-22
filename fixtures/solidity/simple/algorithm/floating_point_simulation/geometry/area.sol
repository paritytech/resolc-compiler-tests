//! {
//!   "cases": [
//!     {
//!       "name": "triangle1",
//!       "inputs": [
//!         {
//!           "method": "triangle",
//!           "calldata": [
//!             "3",
//!             "4",
//!             "5"
//!           ],
//!           "caller": "0x5774c78e89397301c1f686309761bba4735dc385"
//!         }
//!       ],
//!       "expected": [
//!         "600"
//!       ]
//!     },
//!     {
//!       "name": "triangle2",
//!       "inputs": [
//!         {
//!           "method": "triangle",
//!           "calldata": [
//!             "37",
//!             "111",
//!             "87"
//!           ],
//!           "caller": "0x57b0dc0b0d5851ef3e3850355d8b670225fee992"
//!         }
//!       ],
//!       "expected": [
//!         "136937"
//!       ]
//!     },
//!     {
//!       "name": "polygon1",
//!       "inputs": [
//!         {
//!           "method": "polygon",
//!           "calldata": [
//!             "5",
//!             "2",
//!             "4",
//!             "5",
//!             "3",
//!             "0",
//!             "0",
//!             "0",
//!             "0",
//!             "0",
//!             "0",
//!             "4",
//!             "3",
//!             "1",
//!             "0",
//!             "0",
//!             "0",
//!             "0",
//!             "0",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0xfd26f41c054d5121b3bed1d2b58e4011494d5444"
//!         }
//!       ],
//!       "expected": [
//!         "1200"
//!       ]
//!     },
//!     {
//!       "name": "polygon2",
//!       "inputs": [
//!         {
//!           "method": "polygon",
//!           "calldata": [
//!             "7",
//!             "13",
//!             "17",
//!             "111",
//!             "113",
//!             "55",
//!             "31",
//!             "1",
//!             "0",
//!             "0",
//!             "0",
//!             "21",
//!             "29",
//!             "111",
//!             "92",
//!             "7",
//!             "7",
//!             "1",
//!             "0",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x298341e38c9675af95676d9871f4048170bb832d"
//!         }
//!       ],
//!       "expected": [
//!         "385600"
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
//!           "caller": "0x5127c7930a55c9e8e61082e2308899ef2ab815d9"
//!         }
//!       ],
//!       "expected": [
//!         "61575"
//!       ]
//!     },
//!     {
//!       "name": "sphere2",
//!       "inputs": [
//!         {
//!           "method": "sphere",
//!           "calldata": [
//!             "7142423"
//!           ],
//!           "caller": "0x3ce0a933dc37ed37b8d7c4577fd2c705ef6c75ac"
//!         }
//!       ],
//!       "expected": [
//!         "64106342310051445"
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
    uint8 constant DIM = 10;
    uint128 constant MAX_U128_SQRT = 18446744073709551615;

    struct Triangle {
        uint128 a;
        uint128 b;
        uint128 c;
    }

    struct Polygon {
        uint8 n;
        uint128[DIM] x;
        uint128[DIM] y;
    }

    struct Sphere {
        uint128 r;
    }

    function triangle(Triangle memory triangle) public pure returns(uint64) {
        triangle.a *= EPS;
        triangle.b *= EPS;
        triangle.c *= EPS;
        // area * PRECISION
        return uint64(triangleArea(triangle) * PRECISION / EPS / EPS);
    }

    function polygon(Polygon memory polygon) public pure returns(uint64) {
        for(uint8 i = 0; i < polygon.n; i++) {
            polygon.x[i] *= EPS;
            polygon.y[i] *= EPS;
        }
        // area * PRECISION
        return uint64(polygonArea(polygon) * PRECISION / EPS / EPS);
    }

    function sphere(Sphere memory sphere) public pure returns(uint64) {
        // surface * PRECISION
        return uint64(sphereSurface(sphere, PI) * PRECISION / EPS / EPS / EPS);
    }

    function sqrt(uint128 n) private pure returns(uint128) {
        // binary search
        uint128 l = 0;
        uint128 r = MAX_U128_SQRT;
        while (l < r) {
            uint128 m = (l + r + 1) / 2;
            if (m*m <= n) {
                l = m;
            } else {
                r = m - 1;
            }
        }
        if (n - l*l < (l+1)*(l+1) - n) {
            return l;
        } else {
            return l + 1;
        }
    }

    function triangleArea(Triangle memory triangle) private pure returns(uint128) {
        uint128 p = (triangle.a + triangle.b + triangle.c) / 2;
        return sqrt(p * (p - triangle.a) * (p - triangle.b) * (p - triangle.c));
    }

    function polygonArea(Polygon memory polygon) private pure returns(uint128) {
        uint128 sp = 0;
        uint128 sn = 0;
        for(uint8 i = 1; i < polygon.n; i++) {
            if (polygon.x[i] > polygon.x[i - 1]) {
                sp += (polygon.x[i] - polygon.x[i - 1]) * (polygon.y[i] + polygon.y[i - 1]);
            } else {
                sn += (polygon.x[i - 1] - polygon.x[i]) * (polygon.y[i] + polygon.y[i - 1]);
            }
        }
        if (polygon.x[0] > polygon.x[polygon.n - 1]) {
            sp += (polygon.x[0] - polygon.x[polygon.n - 1]) * (polygon.y[0] + polygon.y[polygon.n - 1]);
        } else {
            sn += (polygon.x[polygon.n - 1] - polygon.x[0]) * (polygon.y[0] + polygon.y[polygon.n - 1]);
        }
        return (sp - sn) / 2;
    }

    function sphereSurface(Sphere memory sphere, uint128 pi) private pure returns(uint128) {
        return 4 * pi * sphere.r * sphere.r;
    }
}