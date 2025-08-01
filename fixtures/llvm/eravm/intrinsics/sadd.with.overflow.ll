;! {
;!   "cases": [
;!     {
;!       "name": "pos_pos",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "42",
;!             "24"
;!           ],
;!           "caller": "0x4Bf58c0919be8bF87fB260BEA194a98892aCfB5e"
;!         }
;!       ],
;!       "expected": [
;!         "66",
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "pos_neg",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "40",
;!             "-1"
;!           ],
;!           "caller": "0x402253E505Bd856b13f3160EE71Bd52d4708B71c"
;!         }
;!       ],
;!       "expected": [
;!         "39",
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "pos_neg_no_overflow",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0xB70187b0662D121CCAabaa45807B95a7B74957E5"
;!         }
;!       ],
;!       "expected": [
;!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "neg_neg_overflow",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0xaD14AAd19F4C3E1B4DA2554dc1A217E90b36EefC"
;!         }
;!       ],
;!       "expected": [
;!         "0",
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "pos_pos_overflow",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xd66F4dF1cDb2a8Bea38766F9507abB23A7E50C8C"
;!         }
;!       ],
;!       "expected": [
;!         "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe",
;!         "1"
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

  %sadd = call { i256, i1 } @llvm.sadd.with.overflow.i256(i256 %cell_1, i256 %cell_2)
  %result_1 = extractvalue { i256, i1 } %sadd, 0
  %result_2 = extractvalue { i256, i1 } %sadd, 1
  %result_2.t = zext i1 %result_2 to i256

  store i256 %result_1, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  store i256 %result_2.t, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 32

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
declare { i256, i1 } @llvm.sadd.with.overflow.i256(i256, i256) #1

attributes #0 = { noreturn nounwind }
attributes #1 = { nounwind }
