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
;!           "caller": "0x9b355A35D2C0edF5e705Ed78a2d830075E801708"
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
;!           "caller": "0x8518315C2dd8E5F51bC2D8D6e6cCcfd6c697a932"
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
;!           "caller": "0xC7aAE699A21b4DA933B1Cf8a1eBc991c9C790F0c"
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
;!           "caller": "0xcFA546aEc147A28Db4187C5C7E8640C4DD7e4507"
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
;!           "caller": "0x64603BC02A71c08B4D2a57b50cCE2F23A847B225"
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
;!           "caller": "0xe097e46cDEc2119E61fA5636C2989E9dbE1841E0"
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
;!           "caller": "0x65d59bb24319C9D96ac6304353C1bDBd5EfC0844"
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
;!           "caller": "0x11cC770a1353033C8E44419043bf9747c69b5129"
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
;!           "caller": "0xAEB5bb835A7F5eB11a168D6B78ada44957622401"
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
;!           "caller": "0x65c197B1292f377B7d1df2eF3c47ec46787f3bf1"
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
;!           "caller": "0x1DC4F0f2E4109FF39C0a9a0147dA6C5424a9eBAb"
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
;!           "caller": "0xbe4149786eEb2b636739BAdb27295ed3bcfD06C0"
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
;!           "caller": "0xD1b639e577c08A542C1B3219106b25535E12b9Dd"
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
;!           "caller": "0x42E8970d7f5806E0043025EAa9fC21b8fB610Cd8"
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
;!           "caller": "0xe0b74931a29aeb0A3487828058F908E92eC80d26"
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
;!           "caller": "0x6F7093401C9D1fAE2EBc589A8bBf7b04B8281067"
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
;!           "caller": "0xE628963Aa5700cD332c893fC8393C9b5f13eC203"
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
;!           "caller": "0x8fe78f3e44906945c052705d01DB549C34b7e220"
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
;!           "caller": "0x9582cEd84D92f9B4FF8bbE3583804E8941987A9D"
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
;!           "caller": "0xB377D1C7E4C7395aB636Dd2fe954fF8276e4c391"
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
;!           "caller": "0xa9F3A32Eba6383a2F23E79D059D69BB1f83de831"
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
;!           "caller": "0x3246EBff0D4CEDd6e6D5B571E8728Eb491D9A27b"
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
;!           "caller": "0x1AE11bfee14D379BF3db3740fE04341Db4dC3A37"
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
;!           "caller": "0x09E352F7E5715942db7f171Eb6E4b88de1A0DCd1"
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
;!           "caller": "0xC380582f2fF87bDe58dB09B97e12390227060AEA"
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
;!           "caller": "0xf2942A483E35aD5E481A4649dE6980F5be3799D4"
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
;!           "caller": "0x02aB656831cb8003AeF90a99FEbD495ec7b7AcE9"
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
;!           "caller": "0x91c89E5925Fc0e4Bc5c6C05a97f2A1F5ADD48Faa"
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
;!           "caller": "0x9bc72f887a4c90492f2fff97e5c75114E4c61c79"
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
;!           "caller": "0x35D265e489E3C839c95378b1049cb813086e82fA"
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
;!           "caller": "0x5c0CaeE3eaEDA7D46B7662e94E4319Be85Ce8BD8"
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
;!           "caller": "0x0892F7CB9724C2890830078b3D1A170E601FfAb0"
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
;!           "caller": "0x29885F9FF55Ce47bc41575c05bE8bC033056800B"
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
;!           "caller": "0x0125aE4eb2459F2d50f14877FF3A45CC3c3ADFE9"
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
;!           "caller": "0x45590b65C8fBdCed4d4e8cdfd32FB677196Ffa55"
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
;!           "caller": "0xA938c45A4947D6845F18E2fB679F76dfFd611bf6"
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
  %res = call i256 @__byte(i256 noundef %arg1, i256 noundef %arg2)
  store i256 %res, ptr addrspace(1) null, align 4
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

declare i256 @__byte(i256 %arg1, i256 %arg2) #0
declare void @llvm.evm.return(ptr addrspace(1), i256)
declare i256 @llvm.evm.calldataload(ptr addrspace(2))

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind readnone willreturn }
