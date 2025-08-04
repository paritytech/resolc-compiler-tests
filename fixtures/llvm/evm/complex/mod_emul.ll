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
;!           "caller": "0xe88bbf2871D1DC99F1753Ea37AF0508063646e4a"
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
;!           "caller": "0xC53CEf147B34665fb0833BdCABca10783E13885B"
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
;!           "caller": "0x23c9E45e1d554619B419183aa2785f9cdeb0408F"
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
;!           "caller": "0x290BD2Dd6bE21fa34C599D224675DabCF8f9978B"
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
;!             "433478394034343"
;!           ],
;!           "caller": "0xCfDd55F2d1A939D3fF3DF8919Feb4d3C9421b320"
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
;!           "caller": "0xbfD3AC2f8329F799aAe449984013e8B80Cb5Bda5"
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
;!             "433478394034343"
;!           ],
;!           "caller": "0x50c8F4a3A6C6df809c3Fcd9F2c765363a3F86DD6"
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
;!           "caller": "0x4657FFD5EA3eD3e6C45e24E4834B37c5AcC9aC7f"
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
;!             "3456789009876545678",
;!             "45116789098765678"
;!           ],
;!           "caller": "0xBc5E5D33c51f00b1E80e893B22D7E1BbAE185939"
;!         }
;!       ],
;!       "expected": [
;!         "27913038370354150"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "15903955902367335447395448984",
;!             "67897657890876"
;!           ],
;!           "caller": "0x3BD9d181dC82B2F78BA200CB98399c7EdAdAdA8E"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_plus_one_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xab000000000000000000000000000000000000000000000000000000000000a2",
;!             "0xab000000000000000000000000000000000000000000000000000000000000a1"
;!           ],
;!           "caller": "0x9d6De52f9D93a64561aeFdCA703F16aFee63c151"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_equals",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "6873546235472354672354762358492378590345034805934590348534",
;!             "6873546235472354672354762358492378590345034805934590348534"
;!           ],
;!           "caller": "0x5F1Fb8353897CaF6b79B36EbB3E1904D7AD33299"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_plus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xab000000000000000000000000000000000000000000000000000000000000a1",
;!             "0xab000000000000000000000000000000000000000000000000000000000000a2"
;!           ],
;!           "caller": "0xa56204511525e0E29501E5aC98aB762012BaaDD6"
;!         }
;!       ],
;!       "expected": [
;!         "0xab000000000000000000000000000000000000000000000000000000000000a1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_bigger_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "456789098765467892304234234234234234234",
;!             "7863249563247857289401203492047823764573465734573434537783"
;!           ],
;!           "caller": "0xb6eA087e475AbCb7C50d21EE4cb3e764fB7CC9d0"
;!         }
;!       ],
;!       "expected": [
;!         "456789098765467892304234234234234234234"
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
;!           "caller": "0x081467782f6D31A1E7fEc62f7e536eeDDfff45A8"
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
;!           "caller": "0xbf0504B145387CB647b83f98830B98A2a7a94f75"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x7d38ce32B2b8A8Aef52d38b65141AFC9E1B43691"
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
;!           "caller": "0xC4B50154372d4010F4fE961fE3cba9E95E4A67A8"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x5309256944d301A1484200B300152b6A26ac83c1"
;!         }
;!       ],
;!       "expected": [
;!         "7437834752357434334343423343443375834785783474"
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
;!           "caller": "0xcaa2197EC836c60eA98Df6690BD9e3486C34FA70"
;!         }
;!       ],
;!       "expected": [
;!         "6417771337354779485678372628500671724"
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
;!           "caller": "0xF9F66B746457f6Ecbf9CAf47faC56d12a67A1f56"
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
  %res = call i256 @mod(i256 noundef %arg1, i256 noundef %arg2)
  store i256 %res, ptr addrspace(1) null, align 4
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

define i256 @mod(i256 %arg1, i256 %arg2) #0 {
entry:
  %is_divider_zero = icmp eq i256 %arg2, 0
  br i1 %is_divider_zero, label %return, label %remainder

remainder:
  %rem_res = urem i256 %arg1, %arg2
  br label %return

return:
  %res = phi i256 [ 0, %entry ], [ %rem_res, %remainder ]
  ret i256 %res
}

declare void @llvm.evm.return(ptr addrspace(1), i256)
declare i256 @llvm.evm.calldataload(ptr addrspace(2))

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn }
