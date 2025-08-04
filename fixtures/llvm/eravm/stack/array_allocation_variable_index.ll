;! {
;!   "cases": [
;!     {
;!       "name": "0",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x123456789abcdef0123456789abcdef01234567890abcdef01234567890abcde",
;!             "0x0"
;!           ],
;!           "caller": "0x43F3d346E076CBC687BfB19FAf40179233912FC0"
;!         }
;!       ],
;!       "expected": [
;!         "0x123456789abcdef0123456789abcdef01234567890abcdef01234567890abcde"
;!       ]
;!     },
;!     {
;!       "name": "1",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x123456789abcdef0123456789abcdef01234567890abcdef01234567890abcde",
;!             "1"
;!           ],
;!           "caller": "0xdF54040D7dEe751CaA5c5Fd1A1E333faDdB89387"
;!         }
;!       ],
;!       "expected": [
;!         "0x123456789abcdef0123456789abcdef01234567890abcdef01234567890abcde"
;!       ]
;!     },
;!     {
;!       "name": "3",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x123456789abcdef0123456789abcdef01234567890abcdef01234567890abcde",
;!             "3"
;!           ],
;!           "caller": "0x9b91Dd3eA7a4498C204E7437B63D1e3d34423192"
;!         }
;!       ],
;!       "expected": [
;!         "0x123456789abcdef0123456789abcdef01234567890abcdef01234567890abcde"
;!       ]
;!     },
;!     {
;!       "name": "5",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x123456789abcdef0123456789abcdef01234567890abcdef01234567890abcde",
;!             "5"
;!           ],
;!           "caller": "0x40ffe389C1481dEEA9a83329EB5dC21f1582F1c9"
;!         }
;!       ],
;!       "expected": [
;!         "0x123456789abcdef0123456789abcdef01234567890abcdef01234567890abcde"
;!       ]
;!     },
;!     {
;!       "name": "8",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x123456789abcdef0123456789abcdef01234567890abcdef01234567890abcde",
;!             "8"
;!           ],
;!           "caller": "0x8372f79e87E81c87845d3D651C11cFDddC8D9378"
;!         }
;!       ],
;!       "expected": [
;!         "0x123456789abcdef0123456789abcdef01234567890abcdef01234567890abcde"
;!       ]
;!     },
;!     {
;!       "name": "9",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x123456789abcdef0123456789abcdef01234567890abcdef01234567890abcde",
;!             "9"
;!           ],
;!           "caller": "0x61B99F9d3cAe40Cb1735D8b5fCFe46A1FA2F13FC"
;!         }
;!       ],
;!       "expected": [
;!         "0x123456789abcdef0123456789abcdef01234567890abcdef01234567890abcde"
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

  %stack = alloca [10 x i256], align 32

  ; use functions so that the operations will not being folded easily
  call void @store_value([10 x i256]* %stack, i256 %cell_2, i256 %cell_1)
  %result = call i256 @load_value([10 x i256]* %stack, i256 %cell_2)

  ; store the values to the stack
  store i256 %cell_1, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32

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

define void @store_value([10 x i256]* %array, i256 %idx, i256 %val) {
  %idx_slot = getelementptr inbounds [10 x i256], [10 x i256]* %array, i256 0, i256 %idx
  store i256 %val, i256* %idx_slot
  ret void
}

define i256 @load_value([10 x i256]* %array, i256 %idx) {
  %idx_slot = getelementptr inbounds [10 x i256], [10 x i256]* %array, i256 0, i256 %idx
  %rv = load i256, i256* %idx_slot
  ret i256 %rv
}

define i256 @get_offset(i256* %array, i256 %offset) nounwind {
  %begin = getelementptr i256, i256* %array, i256 %offset
  %begin_int = ptrtoint i256* %begin to i256
  ret i256 %begin_int
}

; Function Attrs: noreturn nounwind
declare void @llvm.eravm.return(i256) #0
