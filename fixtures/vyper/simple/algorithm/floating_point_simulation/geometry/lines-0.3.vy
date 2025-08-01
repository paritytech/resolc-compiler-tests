#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "distancePoint1",
#!       "inputs": [
#!         {
#!           "method": "distancePointEntry",
#!           "calldata": [
#!             "7",
#!             "4",
#!             "10",
#!             "5",
#!             "1"
#!           ],
#!           "caller": "0x65113De1eDa7e1BfBBd23076E743Ea305851E696"
#!         }
#!       ],
#!       "expected": [
#!         "607"
#!       ]
#!     },
#!     {
#!       "name": "distancePoint2",
#!       "inputs": [
#!         {
#!           "method": "distancePointEntry",
#!           "calldata": [
#!             "2117",
#!             "443",
#!             "1021",
#!             "5123",
#!             "145"
#!           ],
#!           "caller": "0x8Eb517304D95A41e0E21932662b6F1C04557D537"
#!         }
#!       ],
#!       "expected": [
#!         "504455"
#!       ]
#!     },
#!     {
#!       "name": "intersectionPoint1",
#!       "inputs": [
#!         {
#!           "method": "intersectionPoint",
#!           "calldata": [
#!             "1",
#!             "1",
#!             "0",
#!             "1",
#!             "1",
#!             "2"
#!           ],
#!           "caller": "0x94eb124Bf2D054FDFdCE5158314B08C378e41829"
#!         }
#!       ],
#!       "expected": [
#!         "100",
#!         "100"
#!       ]
#!     },
#!     {
#!       "name": "intersectionPoint2",
#!       "inputs": [
#!         {
#!           "method": "intersectionPoint",
#!           "calldata": [
#!             "121",
#!             "17",
#!             "123",
#!             "912",
#!             "123",
#!             "2133"
#!           ],
#!           "caller": "0xA3480B56C4F1908777642c2e84Bbf5c402C99566"
#!         }
#!       ],
#!       "expected": [
#!         "69",
#!         "1218"
#!       ]
#!     }
#!   ]
#! }

EPS: constant(uint256) = 1000000
PRECISION: constant(uint256) = 100

struct Point:
    x: uint256
    y: uint256

struct Line:
    a: uint256
    b: uint256
    c: uint256

@internal
@pure
def sqrt(n: uint256) -> uint256:
    # binary search
    l: uint256 = 0
    r: uint256 = n
    for _ in range(256):
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

# mb1 == -b1, mc2 == -c2
# returns x * EPS, y * EPS
@internal
@pure
def linesIntersection(a1: uint256, mb1: uint256, c1: uint256, a2: uint256, b2: uint256, mc2: uint256) -> Point:
    d: uint256 = a1 * b2 + a2 * mb1
    return Point({x: (mb1 * mc2 - b2 * c1) * EPS / d, y: (a2 * c1 + a1 * mc2) * EPS / d})

@internal
def distancePoint(line: Line, point: Point) -> uint256:
    return ((line.a * point.x + line.b * point.y + line.c) * EPS * EPS) / self.sqrt((line.a * line.a + line.b * line.b) * EPS * EPS)

@external
def distancePointEntry(line: Line, point: Point) -> uint256:
    # 6.077701994871213... * PRECISION
    return self.distancePoint(line, point) * PRECISION / EPS

@external
def intersectionPoint(a1: uint256, mb1: uint256, c1: uint256, a2: uint256, b2: uint256, mc2: uint256) -> Point:
    point: Point = self.linesIntersection(a1, mb1, c1, a2, b2, mc2)
    point.x *= PRECISION
    point.x /= EPS
    point.y *= PRECISION
    point.y /= EPS
    return point
