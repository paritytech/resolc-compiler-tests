#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "array_2d",
#!       "inputs": [
#!         {
#!           "method": "array_2d",
#!           "calldata": [],
#!           "caller": "0x64380e9F3d19D03Ca4fE3c52ff0c9B9DD889611E"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "array_3d",
#!       "inputs": [
#!         {
#!           "method": "array_3d",
#!           "calldata": [],
#!           "caller": "0x0757916869785D566c5Ba02be70793BFD0C99CC8"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "array_4d",
#!       "inputs": [
#!         {
#!           "method": "array_4d",
#!           "calldata": [],
#!           "caller": "0x920E0Ec461726FcAE06af86C2f0CB2B562D4dfB8"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     }
#!   ]
#! }

ARRAY_SIZE_2D: constant(uint8) = 8
ARRAY_SIZE_3D: constant(uint8) = 3
ARRAY_SIZE_4D: constant(uint8) = 1

@external
@pure
def array_2d() -> uint256:
    array: uint8[ARRAY_SIZE_2D][ARRAY_SIZE_2D] = empty(uint8[ARRAY_SIZE_2D][ARRAY_SIZE_2D])

    for i in range(0, ARRAY_SIZE_2D):
        for j in range(0, ARRAY_SIZE_2D):
            array[i][j] = i*ARRAY_SIZE_2D + j

    result: bool = True
    # other order

    for j in range(0, ARRAY_SIZE_2D):
        for i in range(0, ARRAY_SIZE_2D):
            result = result and array[i][j] == i*ARRAY_SIZE_2D + j

    if result:
        return 1
    else:
        return 0

@external
@pure
def array_3d() -> uint256:
    array: uint8[ARRAY_SIZE_3D][ARRAY_SIZE_3D][ARRAY_SIZE_3D] = empty(uint8[ARRAY_SIZE_3D][ARRAY_SIZE_3D][ARRAY_SIZE_3D])

    for i in range(0, ARRAY_SIZE_3D):
        for j in range(0, ARRAY_SIZE_3D):
            for p in range(0, ARRAY_SIZE_3D):
                array[i][j][p] = i*ARRAY_SIZE_3D*ARRAY_SIZE_3D + j*ARRAY_SIZE_3D + p

    result: bool = True
    # other order

    for p in range(0, ARRAY_SIZE_3D):
        for j in range(0, ARRAY_SIZE_3D):
            for i in range(0, ARRAY_SIZE_3D):
                result = result and array[i][j][p] == i*ARRAY_SIZE_3D*ARRAY_SIZE_3D + j*ARRAY_SIZE_3D + p

    if result:
        return 1
    else:
        return 0

@external
@pure
def array_4d() -> uint256:
    array: uint8[ARRAY_SIZE_4D][ARRAY_SIZE_4D][ARRAY_SIZE_4D][ARRAY_SIZE_4D] = empty(uint8[ARRAY_SIZE_4D][ARRAY_SIZE_4D][ARRAY_SIZE_4D][ARRAY_SIZE_4D])

    for i in range(0, ARRAY_SIZE_4D):
        for j in range(0, ARRAY_SIZE_4D):
            for p in range(0, ARRAY_SIZE_4D):
                for h in range(0, ARRAY_SIZE_4D):
                    array[i][j][p][h] = i*ARRAY_SIZE_4D*ARRAY_SIZE_4D*ARRAY_SIZE_4D + j*ARRAY_SIZE_4D*ARRAY_SIZE_4D + p*ARRAY_SIZE_4D + h

    result: bool = True
    # other order

    for h in range(0, ARRAY_SIZE_4D):
        for p in range(0, ARRAY_SIZE_4D):
            for j in range(0, ARRAY_SIZE_4D):
                for i in range(0, ARRAY_SIZE_4D):
                    result = result and array[i][j][p][h] == i*ARRAY_SIZE_4D*ARRAY_SIZE_4D*ARRAY_SIZE_4D + j*ARRAY_SIZE_4D*ARRAY_SIZE_4D + p*ARRAY_SIZE_4D + h

    if result:
        return 1
    else:
        return 0
