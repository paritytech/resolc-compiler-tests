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
;!           "caller": "0xa34d164Fa99f8eD27EB91b201b6ADC4bD95072A6"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0xb5eFC6DAffa1EB7Ec2f6e23a728e9098FC915D5d"
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
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0x784b8f2614b5d4A65390044B729D5d968fdCcAc6"
;!         }
;!       ],
;!       "expected": [
;!         "0x43"
;!       ]
;!     },
;!     {
;!       "name": "zero_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0x2477381C414e7a6618A633336d29E5651d39BC0f"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
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
;!           "caller": "0x1cb436C8219693ff9C190C2238B8c07C1b99Db24"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0xf56C1b60104F1d3d0B81C5c2Ce52EF3eA5d4041f"
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
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34348443"
;!           ],
;!           "caller": "0xc68dEF9F8a9657D8Ed6854E5145f786f89F2d1fA"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8443"
;!       ]
;!     },
;!     {
;!       "name": "one_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0xBb17abeFd40c9b6C0fE23B828D8065e443207b63"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "17",
;!             "0"
;!           ],
;!           "caller": "0xd939913DCA283644139b5F2c91a51c5A677a31B0"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "4",
;!             "1"
;!           ],
;!           "caller": "0x8C4Ab010E68ff6BE11B85b8BD6017D9d26721A71"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_positive",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "22",
;!             "0x5F21235A343BB4343C1A8543545FF3443340904201D8AC"
;!           ],
;!           "caller": "0x2621f513b50ddCCA8fDA200d65DA8D46D693161e"
;!         }
;!       ],
;!       "expected": [
;!         "0x5F21235A343BB4343C1A8543545FF3443340904201D8AC"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_big_positive",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "17",
;!             "0x121B4343C1A8543545FF3443340904201D8AC"
;!           ],
;!           "caller": "0x8B4D00cD6283FBe0EF728429fb07749Adb166d75"
;!         }
;!       ],
;!       "expected": [
;!         "0x21B4343C1A8543545FF3443340904201D8AC"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_negative",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "22",
;!             "0xAF21235A343BB4343C1A8543545FF3443340904201D8AC"
;!           ],
;!           "caller": "0x08184D383448E1C4428F0A5580BD1Fbb21fF70E7"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFAF21235A343BB4343C1A8543545FF3443340904201D8AC"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_big_negative",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "17",
;!             "0xE34F4334AB343443DDC1B4343C1A8543545FF3443340904201D8AC"
;!           ],
;!           "caller": "0x355B89967f040C3cDe1c7FFc45F49b007F99D97b"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1B4343C1A8543545FF3443340904201D8AC"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "25",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0xce1fFA0B80020bB55D09a37BD5c4c636E2694E18"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "255_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "255",
;!             "0"
;!           ],
;!           "caller": "0x81e2a30394E23d7075353B19030394a07ba5e7b5"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "255_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "255",
;!             "1"
;!           ],
;!           "caller": "0x7E492747AA184c51e4A95D08483f8E8b78E057F9"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "255_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "255",
;!             "0x9348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0x6FeDC1452834bFB16ed50ff94ED40E3967281467"
;!         }
;!       ],
;!       "expected": [
;!         "0x9348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!       ]
;!     },
;!     {
;!       "name": "255_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "255",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0x00f9fe221CA2C7A0fEebb8A7f67940ca1ea9F94c"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "256_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "256",
;!             "0"
;!           ],
;!           "caller": "0x89f4e19EF5BE7f3AfF73024dd91C82CEE1e6B14f"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "256_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "256",
;!             "1"
;!           ],
;!           "caller": "0x588253C3059328bE1B8C99d6bE54259f016421E9"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "256_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "256",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0x5FbDe97Fffe6216DBe74000896aBd16027Db38A8"
;!         }
;!       ],
;!       "expected": [
;!         "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!       ]
;!     },
;!     {
;!       "name": "256_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "256",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0x34bE16fdd47e498Ba3dcb198Bfa9312C26ed927a"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "big_ordinar_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "35242523534534534233424343343443",
;!             "0"
;!           ],
;!           "caller": "0x763659E4668246743C2fE1f3D1195b8a26BcAd64"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "big_ordinar_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "35242523534534534233424343343443",
;!             "1"
;!           ],
;!           "caller": "0x86063a1ED009b3b32acc8E9c26391c155cEd1Fc6"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "big_ordinar_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "35242523534534534233424343343443",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0xD33d9cEF7A59934b61F205583070bf625C9717FA"
;!         }
;!       ],
;!       "expected": [
;!         "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!       ]
;!     },
;!     {
;!       "name": "big_ordinar_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "35242523534534534233424343343443",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0x03245B2e24d5e7361D8A00664D4133fb9F4031c3"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "max_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0"
;!           ],
;!           "caller": "0x1b43C5fBB62e3AA101a11B783bD3D165A1Ec1ec2"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "1"
;!           ],
;!           "caller": "0x6B153b648Ea1EB4d94A378a268b3B858fD3EcE67"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "max_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0x02080000Ae69d20337FE6E161Bf0547951304207"
;!         }
;!       ],
;!       "expected": [
;!         "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!       ]
;!     },
;!     {
;!       "name": "max_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0x37B287766e76559976287Ef5A96b736fbf299B30"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
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
  %res = call i256 @__signextend(i256 noundef %arg1, i256 noundef %arg2)
  store i256 %res, ptr addrspace(1) null, align 4
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

declare i256 @__signextend(i256 %arg1, i256 %arg2) #0
declare void @llvm.evm.return(ptr addrspace(1), i256)
declare i256 @llvm.evm.calldataload(ptr addrspace(2))

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind readnone willreturn }
