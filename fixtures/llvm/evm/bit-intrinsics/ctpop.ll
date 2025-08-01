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
;!           "caller": "0xE4Bb0BF8EDBf6232E7f485B37174aDcaFbe9642f"
;!         }
;!       ],
;!       "expected": [
;!         "0x0"
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
;!           "caller": "0xeD9a58c8BEE3511a282716DaaC4F0C5DbFD8138E"
;!         }
;!       ],
;!       "expected": [
;!         "0x100"
;!       ]
;!     },
;!     {
;!       "name": "3",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xDDCCBBAA34599887611FFCA38F98E5610123456789ABCDEF0FEDCBA987654321"
;!           ],
;!           "caller": "0x5CFdaEdC555B0b7E66Eb3F8FE6340cB7BB851914"
;!         }
;!       ],
;!       "expected": [
;!         "0x84"
;!       ]
;!     }
;!   ]
;! }


target datalayout = "E-p:256:256-i256:256:256-S256-a:256:256"
target triple = "evm-unknown-unknown"

define i256 @__entry() noreturn {
runtime:
  %val = load i256, ptr addrspace(2) null, align 32
  %res = call i256 @llvm.ctpop.i256(i256 %val)
  store i256 %res, ptr addrspace(1) null, align 32
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

declare i256 @llvm.ctpop.i256(i256)
declare void @llvm.evm.return(ptr addrspace(1), i256)
