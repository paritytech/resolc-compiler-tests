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
;!           "caller": "0xb382c8deA472abA9C3704c75bE657C24E805e279"
;!         }
;!       ],
;!       "expected": [
;!         "0x100"
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
;!           "caller": "0xBD0e69eeaEcD69d97A85caB6C90077CCAc9B1e02"
;!         }
;!       ],
;!       "expected": [
;!         "0x0"
;!       ]
;!     },
;!     {
;!       "name": "3",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFF00000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0x96a5Ff2fb14fdca7Eef4f3D84359027401d1d7b0"
;!         }
;!       ],
;!       "expected": [
;!         "0xf8"
;!       ]
;!     }
;!   ]
;! }


target datalayout = "E-p:256:256-i256:256:256-S256-a:256:256"
target triple = "evm-unknown-unknown"

define i256 @__entry() noreturn {
runtime:
  %val = load i256, ptr addrspace(2) null, align 32
  %res = call i256 @llvm.cttz.i256(i256 %val, i1 false)
  store i256 %res, ptr addrspace(1) null, align 32
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

declare i256 @llvm.cttz.i256(i256, i1)
declare void @llvm.evm.return(ptr addrspace(1), i256)
