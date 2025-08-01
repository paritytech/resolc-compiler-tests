;! {
;!   "cases": [
;!     {
;!       "name": "0",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0xC285C645b2be54c8268259C85b5d7e437ecbb048"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "1",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0xdA41319C47b16b2297F41c92DFCc0141228221FB"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "2",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0xA88959838866115c2e1A9898066480754b3aB448"
;!         }
;!       ],
;!       "expected": [
;!         "2"
;!       ]
;!     },
;!     {
;!       "name": "3",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x0000000000000100000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0x4c9b0c3BA23c733D0e752C8c56f290Af4Ee85643"
;!         }
;!       ],
;!       "expected": [
;!         "55"
;!       ]
;!     },
;!     {
;!       "name": "4",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0"
;!           ],
;!           "caller": "0x813000De0c033Dd95E253AEde08EC2597C6A7456"
;!         }
;!       ],
;!       "expected": [
;!         "256"
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

  %result = call i256 @__clz(i256 %value)

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

declare i256 @__clz(i256)

; Function Attrs: noreturn nounwind
declare void @llvm.eravm.return(i256) #0
