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
;!           "caller": "0xa087bc1FdB42CDdcb248239F52747d785A2c3677"
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
;!           "caller": "0xeb283e83533Ba4acA6205F588fB97FcdAd3e5c35"
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
;!           "caller": "0x47Bf21315c89b153E59c8CFD7e72C81FB4133E45"
;!         }
;!       ],
;!       "expected": [
;!         "0x00000000000000000000000000000000000000000000000000000000000000f2",
;!         "0x00000000000000000000000000000000000000000000000000000000000000fe"
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
;!           "caller": "0x15bd7ADD05F3DA31bC39Be2690147107C4D41Df3"
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
;!           "caller": "0x8D05734ef4638d3D09cffFfbA13ed88ad3d2653b"
;!         }
;!       ],
;!       "expected": [
;!         "11",
;!         "0x00000000000000000000000000000000000000000000000000000000000000ff"
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
;!           "caller": "0xb17F055F5160FB73437Df4584aa2ecBa426d0bB8"
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
;!             "127",
;!             "-128"
;!           ],
;!           "caller": "0x10537d4D6CB19bB7244DDd6326c5831d1E0B6A64"
;!         }
;!       ],
;!       "expected": [
;!         "0",
;!         "127"
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
;!           "caller": "0xCA11a924Cc6054a0282924eAAccBe438c4A88239"
;!         }
;!       ],
;!       "expected": [
;!         "0x00000000000000000000000000000000000000000000000000000000000000ff",
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
;!           "caller": "0x4431b2aB1445e7a6e598DDB33aD9272944CE0786"
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
  %cell_1.t = trunc i256 %cell_1 to i8

  %cell_2_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 32
  %cell_2_ptr_casted = bitcast i8 addrspace(3)* %cell_2_ptr to i256 addrspace(3)*
  %cell_2 = load i256, i256 addrspace(3)* %cell_2_ptr_casted, align 32
  %cell_2.t = trunc i256 %cell_2 to i8

  %result = sdiv i8 %cell_1.t, %cell_2.t
  %result.e = zext i8 %result to i256
  %result2 = srem i8 %cell_1.t, %cell_2.t
  %result2.e = zext i8 %result2 to i256 

  store i256 %result.e,  i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  store i256 %result2.e, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 32

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
