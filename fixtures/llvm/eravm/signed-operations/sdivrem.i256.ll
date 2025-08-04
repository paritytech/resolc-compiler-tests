;! {
;!   "cases": [
;!     {
;!       "name": "pos_pos",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "42",
;!             "7"
;!           ],
;!           "caller": "0x66C0a33d3eFe5465AAE64D7F7F021C5B0fF65982"
;!         }
;!       ],
;!       "expected": [
;!         "6",
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "zero_pos",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "17"
;!           ],
;!           "caller": "0x463743ADFC2790E7B31594a282B60716D2679811"
;!         }
;!       ],
;!       "expected": [
;!         "0",
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "neg_pos",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-100",
;!             "7"
;!           ],
;!           "caller": "0xED08ea77aF52cc147a15b2f4D0E99f6e1A05078D"
;!         }
;!       ],
;!       "expected": [
;!         "-14",
;!         "-2"
;!       ]
;!     },
;!     {
;!       "name": "zero_neg",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "-77"
;!           ],
;!           "caller": "0x7215a93DD0cECbA81B38BeA974e1475969B4260C"
;!         }
;!       ],
;!       "expected": [
;!         "0",
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "neg_neg",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-100",
;!             "-9"
;!           ],
;!           "caller": "0x017F222764Af6554ebBd8349c7e4d25915455463"
;!         }
;!       ],
;!       "expected": [
;!         "11",
;!         "-1"
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
;!           "caller": "0xB66a4F609eAf0532dbbf6E292d090915D496Ce60"
;!         }
;!       ],
;!       "expected": [
;!         "1",
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0x73A394c300e9f47dd41fD7c3577Aee4B465af4AE"
;!         }
;!       ],
;!       "expected": [
;!         "0",
;!         "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!       ]
;!     },
;!     {
;!       "name": "min_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xc46FA6D23bBCb73118af1EB4F6F4642EBE08C49D"
;!         }
;!       ],
;!       "expected": [
;!         "-1",
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "min_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0x5ec86a3a04D05800503De18F9304Fc2DdF2513dF"
;!         }
;!       ],
;!       "expected": [
;!         "1",
;!         "0"
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

  %result = sdiv i256 %cell_1, %cell_2
  %result2 = srem i256 %cell_1, %cell_2

  store i256 %result, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  store i256 %result2, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 32

  %abi_data = shl i256 64, 96
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

attributes #0 = { noreturn nounwind }
attributes #1 = { nounwind }
