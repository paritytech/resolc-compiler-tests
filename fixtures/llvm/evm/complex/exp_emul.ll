;! {
;!   "cases": [
;!     {
;!       "name": "zero_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0"
;!           ],
;!           "caller": "0x3D0C467305c4a2CE28c1246bB4674412379a9F00"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "zero_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "1"
;!           ],
;!           "caller": "0x2881DFaF6d69e363DDBEb2b7B93192096e6f54AE"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0"
;!           ],
;!           "caller": "0xFaf1F033Ba4945E90819B2eCE7DcFeB76Fc5CD91"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "one_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "1"
;!           ],
;!           "caller": "0x3f67D3233118C823f35Cd53Ab26c0A807bf0365B"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "zero_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "433478394034343"
;!           ],
;!           "caller": "0x50C829B714101336e80C4d038700B3712872AaB1"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "121563127839120",
;!             "0"
;!           ],
;!           "caller": "0xCB5572253D34d2097922F0dc398b4973497cb27C"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "one_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "433478394034343"
;!           ],
;!           "caller": "0x47FC6A72ADAc13D2fb800F95cb164eA6a2045a33"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "121563127839120",
;!             "1"
;!           ],
;!           "caller": "0xE43570F62f620a50174e7fbD8Ef24fd9C7310EA9"
;!         }
;!       ],
;!       "expected": [
;!         "121563127839120"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "21",
;!             "52"
;!           ],
;!           "caller": "0x367534dBdD98C24ef607e9Ed7e5472371DebeffE"
;!         }
;!       ],
;!       "expected": [
;!         "569381465857367090636427305760163241950353347303833610101782245331441"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_big",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "2"
;!           ],
;!           "caller": "0x3382f53103eeCC8aEd754cB07463Ae6200AdfAe5"
;!         }
;!       ],
;!       "expected": [
;!         "0xfffffffffffffffffffffffffffffffe00000000000000000000000000000001"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_min_overflow",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x0000000000000000000000000000000000000000000000000000000000010000",
;!             "16"
;!           ],
;!           "caller": "0x84f6dd3Db743C327843CC826424DB78a97f67e23"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_overflow",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x2fff1ffffffffff5ffffff0fffffffff2ffffffafffafffcffff1ff234ffffff",
;!             "0xef231ffffffffff4f12fff34ffffffff2fffffbbfffafffdffff22f538ffffff"
;!           ],
;!           "caller": "0x69aCbA502a1dAdcD5699E0FfaC61bfd7504a28Ab"
;!         }
;!       ],
;!       "expected": [
;!         "46756260758475007021788099943083655901358133181480408838873172916982662561791"
;!       ]
;!     },
;!     {
;!       "name": "zero_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x1EAbba5D69c143a1910871dd9eeaAD2b5f02Be6d"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0"
;!           ],
;!           "caller": "0x0Af4e0d903D8bB64B9Fd613b33C39BB8192c8e23"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "one_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xAd889Df09D6687A6a7Fc03A21CB89127bB7D877f"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "max_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "1"
;!           ],
;!           "caller": "0x7a8E63F51C6d8f72AFcc20a5C4768dcaBcc9A54d"
;!         }
;!       ],
;!       "expected": [
;!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "7437834752357434334343423343443375834785783474",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xD79F6274211316C2f01Ef620A7C735A5c3a08Bf3"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "23784273472384723848213821342323233223"
;!           ],
;!           "caller": "0xBaCe95face8266a44463a6f677fecCd9AADA0EcE"
;!         }
;!       ],
;!       "expected": [
;!         "115792089237316195423570985008687907853269984665640564039457584007913129639935"
;!       ]
;!     },
;!     {
;!       "name": "max_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x3E8e41322495DF942CEBbaA85118Ec2f61D30D1A"
;!         }
;!       ],
;!       "expected": [
;!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!       ]
;!     }
;!   ]
;! }


target datalayout = "E-p:256:256-i256:256:256-S256-a:256:256"
target triple = "evm-unknown-unknown"

define void @test() noreturn {
bb:
  %off1 = inttoptr i256 0 to ptr addrspace(2)
  %off2 = inttoptr i256 32 to ptr addrspace(2)
  %arg1 = call i256 @llvm.evm.calldataload(ptr addrspace(2) %off1)
  %arg2 = call i256 @llvm.evm.calldataload(ptr addrspace(2) %off2)
  %res = call i256 @exp(i256 noundef %arg1, i256 noundef %arg2)
  store i256 %res, ptr addrspace(1) null, align 4
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

define i256 @exp(i256 %value, i256 %exp) #0 {
entry:
  %exp_is_non_zero = icmp eq i256 %exp, 0
  br i1 %exp_is_non_zero, label %return, label %exponent_loop_body

return:
  %exp_res = phi i256 [ 1, %entry ], [ %exp_res.1, %exponent_loop_body ]
  ret i256 %exp_res

exponent_loop_body:
  %exp_res.2 = phi i256 [ %exp_res.1, %exponent_loop_body ], [ 1, %entry ]
  %exp_val = phi i256 [ %exp_val_halved, %exponent_loop_body ], [ %exp, %entry ]
  %val_squared.1 = phi i256 [ %val_squared, %exponent_loop_body ], [ %value, %entry ]
  %odd_test = and i256 %exp_val, 1
  %is_exp_odd = icmp eq i256 %odd_test, 0
  %exp_res.1.interm = select i1 %is_exp_odd, i256 1, i256 %val_squared.1
  %exp_res.1 = mul i256 %exp_res.1.interm, %exp_res.2
  %val_squared = mul i256 %val_squared.1, %val_squared.1
  %exp_val_halved = lshr i256 %exp_val, 1
  %exp_val_is_less_2 = icmp ult i256 %exp_val, 2
  br i1 %exp_val_is_less_2, label %return, label %exponent_loop_body
}

declare void @llvm.evm.return(ptr addrspace(1), i256)
declare i256 @llvm.evm.calldataload(ptr addrspace(2))

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn }
