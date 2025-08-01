#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "cube1",
#!       "inputs": [
#!         {
#!           "method": "cube",
#!           "calldata": [
#!             "3"
#!           ],
#!           "caller": "0x34a461AA8270Cb07F3c94bf00fa88d0a91485432"
#!         }
#!       ],
#!       "expected": [
#!         "27"
#!       ]
#!     },
#!     {
#!       "name": "cube2",
#!       "inputs": [
#!         {
#!           "method": "cube",
#!           "calldata": [
#!             "312174"
#!           ],
#!           "caller": "0x2E1dfA8D22d6B0773bd7E983D56c21093AbD8b8d"
#!         }
#!       ],
#!       "expected": [
#!         "30422169911604024"
#!       ]
#!     },
#!     {
#!       "name": "sphere1",
#!       "inputs": [
#!         {
#!           "method": "sphere",
#!           "calldata": [
#!             "7"
#!           ],
#!           "caller": "0xE6B4397cf0fc2Cb182308FfE500B2b9E94661242"
#!         }
#!       ],
#!       "expected": [
#!         "143675"
#!       ]
#!     },
#!     {
#!       "name": "sphere2",
#!       "inputs": [
#!         {
#!           "method": "sphere",
#!           "calldata": [
#!             "71249"
#!           ],
#!           "caller": "0x563068963D2308109F6a8F5d1fcA08E47f9071Fa"
#!         }
#!       ],
#!       "expected": [
#!         "151504289520102405"
#!       ]
#!     }
#!   ]
#! }

EPS: constant(uint256) = 1000000
# PI * EPS^3
PI: constant(uint256) = 3141592653589793238
PRECISION: constant(uint256) = 100

struct Cube:
    a: uint256

struct Sphere:
    r: uint256

@internal
@pure
def cubeVolume(cube: Cube) -> uint256:
    return cube.a * cube.a * cube.a

@internal
@pure
def sphereVolume(sphere: Sphere, pi: uint256) -> uint256:
    return 4 * pi * sphere.r * sphere.r * sphere.r / 3

@external
def cube(cube: Cube) -> uint256:
    return self.cubeVolume(cube)

@external
def sphere(sphere: Sphere) -> uint256:
    # volume * PRECISION
    return self.sphereVolume(sphere, PI) * PRECISION / EPS / EPS / EPS
