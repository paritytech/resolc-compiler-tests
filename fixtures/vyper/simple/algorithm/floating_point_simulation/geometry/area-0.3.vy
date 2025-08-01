#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "triangle1",
#!       "inputs": [
#!         {
#!           "method": "triangle",
#!           "calldata": [
#!             "3",
#!             "4",
#!             "5"
#!           ],
#!           "caller": "0x8801982DDFDb2100F9F9EE0c3E426F62319b3c32"
#!         }
#!       ],
#!       "expected": [
#!         "600"
#!       ]
#!     },
#!     {
#!       "name": "triangle2",
#!       "inputs": [
#!         {
#!           "method": "triangle",
#!           "calldata": [
#!             "37",
#!             "111",
#!             "87"
#!           ],
#!           "caller": "0x1391AC879f4b033e508775990D095918511dfD9A"
#!         }
#!       ],
#!       "expected": [
#!         "136937"
#!       ]
#!     },
#!     {
#!       "name": "polygon1",
#!       "inputs": [
#!         {
#!           "method": "polygon",
#!           "calldata": [
#!             "5",
#!             "2",
#!             "4",
#!             "5",
#!             "3",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "4",
#!             "3",
#!             "1",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0xDDF4A01c6D1534Cc0cE43783e56B6bC1c3e17e50"
#!         }
#!       ],
#!       "expected": [
#!         "1200"
#!       ]
#!     },
#!     {
#!       "name": "polygon2",
#!       "inputs": [
#!         {
#!           "method": "polygon",
#!           "calldata": [
#!             "7",
#!             "13",
#!             "17",
#!             "111",
#!             "113",
#!             "55",
#!             "31",
#!             "1",
#!             "0",
#!             "0",
#!             "0",
#!             "21",
#!             "29",
#!             "111",
#!             "92",
#!             "7",
#!             "7",
#!             "1",
#!             "0",
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0x3D8df7C774b94B993E85CaCde528fBfA1c8092bA"
#!         }
#!       ],
#!       "expected": [
#!         "385600"
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
#!           "caller": "0xd091FBcA52a88b6e49FF8465e3277FE02232452a"
#!         }
#!       ],
#!       "expected": [
#!         "61575"
#!       ]
#!     },
#!     {
#!       "name": "sphere2",
#!       "inputs": [
#!         {
#!           "method": "sphere",
#!           "calldata": [
#!             "7142423"
#!           ],
#!           "caller": "0xE18bfF48Fcc2304aff2A329c661B5070aF295EFF"
#!         }
#!       ],
#!       "expected": [
#!         "64106342310051445"
#!       ]
#!     }
#!   ]
#! }

EPS: constant(uint256) = 1000000
# PI * EPS^3
PI: constant(uint256) = 3141592653589793238
PRECISION: constant(uint256) = 100
DIM: constant(uint8) = 10
MAX_U128_SQRT: constant(uint256) = 18446744073709551615

struct Triangle:
    a: uint256
    b: uint256
    c: uint256

struct Polygon:
    n: uint8
    x: uint256[DIM]
    y: uint256[DIM]

struct Sphere:
    r: uint256

@internal
@pure
def sqrt(n: uint256) -> uint256:
    # binary search
    l: uint256 = 0
    r: uint256 = MAX_U128_SQRT
    for _ in range(64):
        if l == r:
            break
        m: uint256 = (l + r + 1) / 2
        if m*m <= n:
            l = m
        else:
            r = m - 1
    if n - l*l < (l+1)*(l+1) - n:
        return l
    else:
        return l + 1

@internal
def triangleArea(triangle: Triangle) -> uint256:
    p: uint256 = (triangle.a + triangle.b + triangle.c) / 2
    return self.sqrt(p * (p - triangle.a) * (p - triangle.b) * (p - triangle.c))

@internal
@pure
def polygonArea(polygon: Polygon) -> uint256:
    sp: uint256 = 0
    sn: uint256 = 0
    for i in range(1, DIM):
        if not i < polygon.n:
            break
        if polygon.x[i] > polygon.x[i - 1]:
            sp += (polygon.x[i] - polygon.x[i - 1]) * (polygon.y[i] + polygon.y[i - 1])
        else:
            sn += (polygon.x[i - 1] - polygon.x[i]) * (polygon.y[i] + polygon.y[i - 1])
    if polygon.x[0] > polygon.x[polygon.n - 1]:
        sp += (polygon.x[0] - polygon.x[polygon.n - 1]) * (polygon.y[0] + polygon.y[polygon.n - 1])
    else:
        sn += (polygon.x[polygon.n - 1] - polygon.x[0]) * (polygon.y[0] + polygon.y[polygon.n - 1])
    return (sp - sn) / 2

@internal
@pure
def sphereSurface(sphere: Sphere, pi: uint256) -> uint256:
    return 4 * pi * sphere.r * sphere.r

@external
def triangle(_triangle: Triangle) -> uint256:
    triangle: Triangle = _triangle
    triangle.a *= EPS
    triangle.b *= EPS
    triangle.c *= EPS
    # area * PRECISION
    return self.triangleArea(triangle) * PRECISION / EPS / EPS

@external
def polygon(_polygon: Polygon) -> uint256:
    polygon: Polygon = _polygon
    for i in range(DIM):
        if not i < polygon.n:
            break
        polygon.x[i] *= EPS
        polygon.y[i] *= EPS
    # area * PRECISION
    return self.polygonArea(polygon) * PRECISION / EPS / EPS

@external
def sphere(sphere: Sphere) -> uint256:
    # surface * PRECISION
    return self.sphereSurface(sphere, PI) * PRECISION / EPS / EPS / EPS
