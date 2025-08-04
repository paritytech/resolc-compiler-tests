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
;!           "caller": "0x8f0c60cBb97F88099d57a0258bC8dAE859ea2E26"
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
;!           "caller": "0xA9fA3C8A8aD26C80EDF33dC0B4a43709A78C1eb8"
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
;!           "caller": "0x6537Ea99fEb70D253fb8Ffd0B95d3B7ed4788289"
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
