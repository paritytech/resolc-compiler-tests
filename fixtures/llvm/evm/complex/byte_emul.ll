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
;!           "caller": "0x8901d6D20ddddfb1bA43136C97cB1816E75E9C4c"
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
;!           "caller": "0x710920Cd594342c21621dFF67B3066E38EcBeFD0"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "zero_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0x0023892AB2783278893489CDE384983994390349FC2988248AA83483898934FC"
;!           ],
;!           "caller": "0xbE24b0Ab15DCAe13281E89F3D4e3D378839550B2"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x34f780bF8fa8E0619704c191b5DdAc286ec271c4"
;!         }
;!       ],
;!       "expected": [
;!         "0x53"
;!       ]
;!     },
;!     {
;!       "name": "zero_ordinar_to_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0xFF872893489348939CA433905903CDF3488893483003400FC4983CCC34343443"
;!           ],
;!           "caller": "0xB1ad177fF38De05FC954660bf06aFD71791a0480"
;!         }
;!       ],
;!       "expected": [
;!         "255"
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
;!           "caller": "0x3E232F3c7e78117A40fcB9cDD7a352B55A290258"
;!         }
;!       ],
;!       "expected": [
;!         "255"
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
;!           "caller": "0xE5C528240D5A6cf13E51615F727f6251FbbBc690"
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
;!           "caller": "0x85A8D4a05A360C29cd0a052b7B6cEB05B2192f99"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0x2300892AB2783278893489CDE384983994390349FC2988248AA83483898934FC"
;!           ],
;!           "caller": "0xc49190067fCa6EF063Fc3578c4C5f5d2239DFdB9"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0x4044ba6d30c208Abb4068bAc7Ce2F9898F5581D7"
;!         }
;!       ],
;!       "expected": [
;!         "0x48"
;!       ]
;!     },
;!     {
;!       "name": "one_ordinar_to_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0x87FF2893489348939CA433905903CDF3488893483003400FC4983CCC34343443"
;!           ],
;!           "caller": "0xA530d06ad016972191f93e3C58D0f9e3941c5b81"
;!         }
;!       ],
;!       "expected": [
;!         "255"
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
;!           "caller": "0x179Efa2b58C4bAF917FCee358F880c1fC6773DE2"
;!         }
;!       ],
;!       "expected": [
;!         "255"
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
;!           "caller": "0x4d9D04bbE0bf161cDe8Ed06134d11257492d4FFf"
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
;!             "17",
;!             "1"
;!           ],
;!           "caller": "0x6AC3E578fd893b21ed36073D250675C6cA1B2384"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "17",
;!             "0x23892AB2783278893489CDE38498399439000349FC2988248AA83483898934FC"
;!           ],
;!           "caller": "0xC350AcA1DBd1AD49270010cf21482CB863017474"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "17",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0x896529908174d88fcD0E6Fb07C111A37836c8f31"
;!         }
;!       ],
;!       "expected": [
;!         "0xCD"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_to_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "17",
;!             "0x872893489348939CA433905903CDF34888FF93483003400FC4983CCC34343443"
;!           ],
;!           "caller": "0x214eF732AEfE62b1Bc234fe6cC1D0C131D814DE5"
;!         }
;!       ],
;!       "expected": [
;!         "255"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "17",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0xcad3BB573F1641Ef5109DA7503694221c296545D"
;!         }
;!       ],
;!       "expected": [
;!         "255"
;!       ]
;!     },
;!     {
;!       "name": "last_byte_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "31",
;!             "0"
;!           ],
;!           "caller": "0x33f70ae006ebb37cc2AaBbaca078AF686F05BB77"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "last_byte_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "31",
;!             "1"
;!           ],
;!           "caller": "0xEF968EaBF36c58618aB977259fceA38013C61Df1"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "last_byte_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "31",
;!             "0x23892AB2783278893489CDE384983994390349FC2988248AA83483898934FC00"
;!           ],
;!           "caller": "0xB9d8f1cEed9013a741704C5BD952f1ce6F01DF2F"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "last_byte_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "31",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0x3bF04fb7625EEA9856dA25D70c24099318c0866F"
;!         }
;!       ],
;!       "expected": [
;!         "0x43"
;!       ]
;!     },
;!     {
;!       "name": "last_byte_ordinar_to_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "31",
;!             "0x872893489348939CA433905903CDF3488893483003400FC4983CCC34343443FF"
;!           ],
;!           "caller": "0x17E294f542C29F368dce69238e0E4985BdB908A9"
;!         }
;!       ],
;!       "expected": [
;!         "255"
;!       ]
;!     },
;!     {
;!       "name": "last_byte_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "31",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0x98dFDd1F1741AC3eaDA28621cB64F2f4Bf6a955F"
;!         }
;!       ],
;!       "expected": [
;!         "255"
;!       ]
;!     },
;!     {
;!       "name": "last_byte_plus_one_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "32",
;!             "0"
;!           ],
;!           "caller": "0xf94bE9e6E99F500994d18Dd89511053613E35903"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "last_byte_plus_one_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "32",
;!             "1"
;!           ],
;!           "caller": "0x0E521a4bB97e4f062A7b634d0600bB56263Cbbd7"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "last_byte_plus_one_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "32",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0x237E1851cBd1fce733b85E46ae37A716Bc0a44a0"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "last_byte_plus_one_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "32",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0xEb786AB368CF1Ef0578C1CaDbf56b573c2c00bc7"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0xaf268cFeE2fc229cc096051f1Ef729aA74BBff00"
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
;!           "caller": "0x14138a94cEf4139fE2e787d6B96422CCdf3015e8"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x600437C4BfCFea33302F033779eF137c582C2aAa"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0xf6c34450dcE966F17EeEE995EABB5310CF9914Ba"
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
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0"
;!           ],
;!           "caller": "0x4BDf04A2be70BC94b4f5E6785a00135a622DC3a9"
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
;!           "caller": "0x068C389793602375EeEB529cB2Cd92D6F4f6350D"
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
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0x804aA39Afb78238E7CC1632c21480c606bdD5Cd9"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0xF2D3Dd37BB7e81429228aE15643264eEe3dAa479"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
  %res = call i256 @byte(i256 noundef %arg1, i256 noundef %arg2)
  store i256 %res, ptr addrspace(1) null, align 4
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

define i256 @byte(i256 %index, i256 %value) #0 {
entry:
  %is_overflow = icmp ugt i256 %index, 31
  br i1 %is_overflow, label %return, label %extract_byte

extract_byte:
  %bits_offset = shl i256 %index, 3
  %value_shifted_left = shl i256 %value, %bits_offset
  %value_shifted_right = lshr i256 %value_shifted_left, 248
  br label %return

return:
  %res = phi i256 [ 0, %entry ], [ %value_shifted_right, %extract_byte ]
  ret i256 %res
}

declare void @llvm.evm.return(ptr addrspace(1), i256)
declare i256 @llvm.evm.calldataload(ptr addrspace(2))

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn }
