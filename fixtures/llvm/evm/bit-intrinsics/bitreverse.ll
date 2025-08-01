;! {
;!   "cases": [
;!     {
;!       "name": "1",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x0000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0x1990d50C1Cba4F2adAB4707398E4d6F701003F26"
;!         }
;!       ],
;!       "expected": [
;!         "0x0000000000000000000000000000000000000000000000000000000000000000"
;!       ]
;!     },
;!     {
;!       "name": "2",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0x2de8eadf40322C9be17FA7f897959f4BC90D387c"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "3",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x00000000000000000000000000000000770F0E0D0C0B0A090807060504030201"
;!           ],
;!           "caller": "0x5EA4D09cbfF6545df7289A274Fb29927Cb530AD4"
;!         }
;!       ],
;!       "expected": [
;!         "0x8040C020A060E0109050D030B070F0EE00000000000000000000000000000000"
;!       ]
;!     }
;!   ]
;! }


target datalayout = "E-p:256:256-i256:256:256-S256-a:256:256"
target triple = "evm-unknown-unknown"

define i256 @__entry() noreturn {
runtime:
  %val = load i256, ptr addrspace(2) null, align 32
  %res = call i256 @llvm.bitreverse.i256(i256 %val)
  store i256 %res, ptr addrspace(1) null, align 32
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

declare i256 @llvm.bitreverse.i256(i256)
declare void @llvm.evm.return(ptr addrspace(1), i256)
