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
;!           "caller": "0x6f60c8C4981cb998AF620f4307f2EFf389c762e7"
;!         }
;!       ],
;!       "expected": [
;!         "6"
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
;!           "caller": "0xDea561d3964f0cF960d4d9EbD1A06fe5a84E2Cf1"
;!         }
;!       ],
;!       "expected": [
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
;!           "caller": "0xDD9Ce1FB441dA98b4942C573817e764D286AB47F"
;!         }
;!       ],
;!       "expected": [
;!         "0x00000000000000000000000000000000000000000000000000000000000000f2"
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
;!           "caller": "0x5467eC579d0d0368ECc8c1C4544bE202FC7E6DEb"
;!         }
;!       ],
;!       "expected": [
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
;!           "caller": "0x82d7D0b83C5B698Ae28849A819EEFfaC8ce56B07"
;!         }
;!       ],
;!       "expected": [
;!         "11"
;!       ]
;!     },
;!     {
;!       "name": "max_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "127",
;!             "127"
;!           ],
;!           "caller": "0x0C3e22cf5C2c2dDe0c18AE93e51A08eE97643D4c"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "max_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "127",
;!             "-128"
;!           ],
;!           "caller": "0xfaF515F009cf68c207fc516f981c6BaC92F04f24"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "min_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-128",
;!             "127"
;!           ],
;!           "caller": "0x36AbF5F06c64e123E10AA4f1E961d2Fbcadb9090"
;!         }
;!       ],
;!       "expected": [
;!         "0x00000000000000000000000000000000000000000000000000000000000000ff"
;!       ]
;!     },
;!     {
;!       "name": "min_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-128",
;!             "-128"
;!           ],
;!           "caller": "0xd1197455AeEAB6d1593CD46Ed3FEB996725c1aA3"
;!         }
;!       ],
;!       "expected": [
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
  %cell_1.t = trunc i256 %cell_1 to i8

  %cell_2_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 32
  %cell_2_ptr_casted = bitcast i8 addrspace(3)* %cell_2_ptr to i256 addrspace(3)*
  %cell_2 = load i256, i256 addrspace(3)* %cell_2_ptr_casted, align 32
  %cell_2.t = trunc i256 %cell_2 to i8

  %result = sdiv i8 %cell_1.t, %cell_2.t
  %result.e = zext i8 %result to i256

  store i256 %result.e, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32

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

attributes #0 = { noreturn nounwind }
attributes #1 = { nounwind }
