#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0x1c699f3066113A695895168a834EE37A8d8Ec15b"
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
#!           "caller": "0x2D7F93EC28fD36312Df09F775e78C513F00ead67"
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
#!           "caller": "0xE16c77FACa4351A807E45C48C0B2721F1e12AfeC"
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
#!           "caller": "0x3d306eBFd3e1512db1b9E8DE3bef16f43d567d62"
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
#!           "caller": "0xF5f940F3CBd37bb48525E5E250aDb901fDCe6F83"
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
#!           "caller": "0x8e5f8cAF525b3B3fDec059f1aC7AFAd907f583A4"
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
    for _: uint256 in range(64):
        if l == r:
            break
        m: uint256 = (l + r + 1) // 2
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
    p: uint256 = (triangle.a + triangle.b + triangle.c) // 2
    return self.sqrt(p * (p - triangle.a) * (p - triangle.b) * (p - triangle.c))

@internal
@pure
def polygonArea(polygon: Polygon) -> uint256:
    sp: uint256 = 0
    sn: uint256 = 0
    for i: uint8 in range(1, DIM):
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
    return (sp - sn) // 2

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
    return self.triangleArea(triangle) * PRECISION // EPS // EPS

@external
def polygon(_polygon: Polygon) -> uint256:
    polygon: Polygon = _polygon
    for i: uint8 in range(DIM):
        if not i < polygon.n:
            break
        polygon.x[i] *= EPS
        polygon.y[i] *= EPS
    # area * PRECISION
    return self.polygonArea(polygon) * PRECISION // EPS // EPS

@external
def sphere(sphere: Sphere) -> uint256:
    # surface * PRECISION
    return self.sphereSurface(sphere, PI) * PRECISION // EPS // EPS // EPS
