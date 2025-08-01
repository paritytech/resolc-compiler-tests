;! {
;!   "cases": [
;!     {
;!       "name": "pos_pos",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "42",
;!             "84"
;!           ],
;!           "caller": "0x5Bf087E998DE1435aF442DB98D6681889f91d053"
;!         }
;!       ],
;!       "expected": [
;!         "126"
;!       ]
;!     },
;!     {
;!       "name": "pos_neg",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "42",
;!             "-84"
;!           ],
;!           "caller": "0x3D876db39aCf61cb72723b4eF882F01ad6ACE8B9"
;!         }
;!       ],
;!       "expected": [
;!         "-42"
;!       ]
;!     },
;!     {
;!       "name": "pos_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "84"
;!           ],
;!           "caller": "0x24d3e7d1F277b1b7f3bb1A00CC1D8A991CCDe9Df"
;!         }
;!       ],
;!       "expected": [
;!         "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!       ]
;!     },
;!     {
;!       "name": "neg_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "-84"
;!           ],
;!           "caller": "0x32b0B1FE405D2d7277A653F1b1A9367259120f7b"
;!         }
;!       ],
;!       "expected": [
;!         "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffab"
;!       ]
;!     },
;!     {
;!       "name": "max_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x0E6e1c3A9f66f270C43fFB215ead0abd85F3F22c"
;!         }
;!       ],
;!       "expected": [
;!         "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!       ]
;!     },
;!     {
;!       "name": "max_negmax",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0x93B341Dd7F6aE7c9A3093601B7129aF0848D3548"
;!         }
;!       ],
;!       "expected": [
;!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!       ]
;!     },
;!     {
;!       "name": "negmax_negmax",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0xD5bA71D8c8c091Acf851e5398605f0fD1bEe6e5F"
;!         }
;!       ],
;!       "expected": [
;!         "0x8000000000000000000000000000000000000000000000000000000000000000"
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

  %cell_1_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 0
  %cell_1_ptr_casted = bitcast i8 addrspace(3)* %cell_1_ptr to i256 addrspace(3)*
  %cell_1 = load i256, i256 addrspace(3)* %cell_1_ptr_casted, align 32

  %cell_2_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 32
  %cell_2_ptr_casted = bitcast i8 addrspace(3)* %cell_2_ptr to i256 addrspace(3)*
  %cell_2 = load i256, i256 addrspace(3)* %cell_2_ptr_casted, align 32

  %result = call i256 @llvm.sadd.sat.i256(i256 %cell_1, i256 %cell_2)

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

; Function Attrs: noreturn nounwind
declare void @llvm.eravm.return(i256) #0
declare i256 @llvm.sadd.sat.i256(i256, i256) #1

attributes #0 = { noreturn nounwind }
attributes #1 = { nounwind }
