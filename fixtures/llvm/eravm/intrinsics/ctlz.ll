;! {
;!   "cases": [
;!     {
;!       "name": "0_1",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0x170e12c32c1a3b4FC12f8C0CB5cb50d04F06d6CA"
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
;!           "caller": "0xd19780858ef9C51c2851e266f39De19Cc4C4b69e"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "256",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0"
;!           ],
;!           "caller": "0x78B88eD1EAcf31Aa4425176979d1F87827539308"
;!         }
;!       ],
;!       "expected": [
;!         "256"
;!       ]
;!     },
;!     {
;!       "name": "255",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1"
;!           ],
;!           "caller": "0xEE67120c1e5c24f36D7159C5cB0C91eD3310617a"
;!         }
;!       ],
;!       "expected": [
;!         "255"
;!       ]
;!     },
;!     {
;!       "name": "127",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x00000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0xC52A3BCCb26FBC71f7e30e18AdD68f36E6b40983"
;!         }
;!       ],
;!       "expected": [
;!         "127"
;!       ]
;!     },
;!     {
;!       "name": "128",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0xaAB6CAD5BcdD39bB5C209C09627541E28C697656"
;!         }
;!       ],
;!       "expected": [
;!         "128"
;!       ]
;!     },
;!     {
;!       "name": "129",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0x1Eb401A0fb45e93AD8f44874781ef49Afae46a91"
;!         }
;!       ],
;!       "expected": [
;!         "129"
;!       ]
;!     },
;!     {
;!       "name": "0_2",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000"
;!           ],
;!           "caller": "0x4b9F6AE9b0433dADF0c7EE4a905789Fd15ae605E"
;!         }
;!       ],
;!       "expected": [
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

  %value_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 0
  %value_ptr_casted = bitcast i8 addrspace(3)* %value_ptr to i256 addrspace(3)*
  %value = load i256, i256 addrspace(3)* %value_ptr_casted, align 32

  %result = call i256 @llvm.ctlz.i256(i256 %value, i1 false)

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

declare i256 @llvm.ctlz.i256(i256, i1)

; Function Attrs: noreturn nounwind
declare void @llvm.eravm.return(i256) #0
