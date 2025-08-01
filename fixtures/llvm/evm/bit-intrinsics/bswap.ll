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
;!           "caller": "0x63Ab9FA37a2cCdE4866cDfa360F440c62B798f35"
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
;!           "caller": "0x817D02dCDe2E5f52e4f7D8E8F80ec332B85b1C1E"
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
;!           "caller": "0x40410F372Bcb9d25e366A0b0E9cf7A93b949Eb44"
;!         }
;!       ],
;!       "expected": [
;!         "0x0102030405060708090A0B0C0D0E0f7700000000000000000000000000000000"
;!       ]
;!     }
;!   ]
;! }


target datalayout = "E-p:256:256-i256:256:256-S256-a:256:256"
target triple = "evm-unknown-unknown"

define i256 @__entry() noreturn {
runtime:
  %val = load i256, ptr addrspace(2) null, align 32
  %res = call i256 @llvm.bswap.i256(i256 %val)
  store i256 %res, ptr addrspace(1) null, align 32
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

declare i256 @llvm.bswap.i256(i256)
declare void @llvm.evm.return(ptr addrspace(1), i256)
