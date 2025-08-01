;! {
;!   "cases": [
;!     {
;!       "name": "256",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0x99c92f0bAd07ED43EAF1e42c0bDFD6f3BF2823aF"
;!         }
;!       ],
;!       "expected": [
;!         "256"
;!       ]
;!     },
;!     {
;!       "name": "255_1",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0x9895a7132b90E44B25CED78fd23Db00556646CfC"
;!         }
;!       ],
;!       "expected": [
;!         "255"
;!       ]
;!     },
;!     {
;!       "name": "255_2",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE"
;!           ],
;!           "caller": "0x18ac00600386E4Cca0bfaD6C223F80119e72c034"
;!         }
;!       ],
;!       "expected": [
;!         "255"
;!       ]
;!     },
;!     {
;!       "name": "0",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0"
;!           ],
;!           "caller": "0x70917642146ca8b1822b153950749d9831e2EebB"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "1_1",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x0000000000000100000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0xa409b4a6eF1863105c91280C49e0ef81ADe3088F"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "1_2",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x0000000000000000000000000000000000000000000000000000100000000000"
;!           ],
;!           "caller": "0x33D3e408898F9755b2E0Ede1E0BcB992Cf81B9D9"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "2_2",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x0000001000000000000000000000000000000000000000000000100000000000"
;!           ],
;!           "caller": "0x25831bAe4F7bB2fae4b002cb2e3C3eFD158ce582"
;!         }
;!       ],
;!       "expected": [
;!         "2"
;!       ]
;!     },
;!     {
;!       "name": "4_1",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x0000003000000000000000000000000000000000000000000000300000000000"
;!           ],
;!           "caller": "0x86DF1E4c21E43F834B715B868b385e8deA59F4Eb"
;!         }
;!       ],
;!       "expected": [
;!         "4"
;!       ]
;!     },
;!     {
;!       "name": "4_2",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000180000000000000000000000000000001"
;!           ],
;!           "caller": "0xD67e60e4C363b356b232b5a35134c257d131F3bc"
;!         }
;!       ],
;!       "expected": [
;!         "4"
;!       ]
;!     },
;!     {
;!       "name": "lower128",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0xdEaa4706167cb3332A4E605B9AA6c3c2Cb52461C"
;!         }
;!       ],
;!       "expected": [
;!         "128"
;!       ]
;!     },
;!     {
;!       "name": "upper128",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000"
;!           ],
;!           "caller": "0xD02b4d8EAA82b9E4728093Acd412fC6466D8f511"
;!         }
;!       ],
;!       "expected": [
;!         "128"
;!       ]
;!     }
;!   ]
;! }

; ModuleID = 'main'
source_filename = "main"
target datalayout = "E-p:256:256-i256:256:256-S32-a:256:256"
target triple = "eravm"

@calldatasize = private unnamed_addr global i256 0
@ptr_calldata = private unnamed_addr global i8 addrspace(3)* null

declare i32 @__personality()

; Function Attrs: noreturn nounwind
define i256 @__entry(i8 addrspace(3)* %0, i1 %1) local_unnamed_addr #0 personality i32 ()* @__personality {
entry:
  store i8 addrspace(3)* %0, i8 addrspace(3)** @ptr_calldata, align 32
  %abi_pointer_value = ptrtoint i8 addrspace(3)* %0 to i256
  %abi_pointer_value_shifted = lshr i256 %abi_pointer_value, 96
  %abi_length_value = and i256 %abi_pointer_value_shifted, 4294967295
  store i256 %abi_length_value, i256* @calldatasize, align 32
  br i1 %1, label %deploy, label %runtime
deploy:
  tail call void @__constructor()
  unreachable

runtime:
  %calldata_ptr = load i8 addrspace(3)*, i8 addrspace(3)** @ptr_calldata, align 32

  %value_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 0
  %value_ptr_casted = bitcast i8 addrspace(3)* %value_ptr to i256 addrspace(3)*
  %value = load i256, i256 addrspace(3)* %value_ptr_casted, align 32

  %result = call i256 @llvm.ctpop.i256(i256 %value)

  store i256 %result, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32

  %abi_data = shl i256 32, 96
  tail call void @llvm.eravm.return(i256 %abi_data) #1
  unreachable
}

; Function Attrs: noreturn nounwind
define private void @__constructor() local_unnamed_addr #0 personality i32 ()* @__personality {
  store i256 32, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  store i256 0, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 32

  %abi_data = shl i256 64, 96
  tail call void @llvm.eravm.return(i256 %abi_data) #1
  unreachable
}

attributes #0 = { noreturn nounwind }
attributes #1 = { nounwind }

declare i256 @llvm.ctpop.i256(i256)

; Function Attrs: noreturn nounwind
declare void @llvm.eravm.return(i256) #0
