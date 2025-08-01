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
;!           "caller": "0x49246c80f1B14871d65178e9032CCD74adC9a53d"
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
;!           "caller": "0xe18FeD4111F634BC2efAF99Ed4f595c724c9705a"
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
;!           "caller": "0x8E8617cd8FD1763B32BEee2C1a6467E29C3372Cc"
;!         }
;!       ],
;!       "expected": [
;!         "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
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
;!           "caller": "0x210e5770482CE6a6e074AFbe0B6e827c14677821"
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
;!           "caller": "0xD0A45768057882631A318bcAa5E461a5A80EAb2B"
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
;!           "caller": "0xfcDd02ca0F8b3f65C3a71d9050bBa2984A6553Ad"
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
;!           "caller": "0x862F4Be490988Ec0f55F6e2340Eb58c39553d2E4"
;!         }
;!       ],
;!       "expected": [
;!         "0x29A44AC49A2C49A4AC81A482C81A482C81E6F9A1A21D59A1A21A1E661A1A1A21"
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
;!           "caller": "0x7Fb64ae367723009c86295A2906958B3D1eDC728"
;!         }
;!       ],
;!       "expected": [
;!         "0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_bytes_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "40",
;!             "0"
;!           ],
;!           "caller": "0x6354684627854b6C34Ca143F5A3266A70F6c00dc"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_bytes_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "40",
;!             "1"
;!           ],
;!           "caller": "0xFfd0399321f526a3EAA8e828A71118a23eEBcaa9"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_bytes_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "40",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0xe74CcD2aFe799558E05DF6485281F3fEB23FF5Fc"
;!         }
;!       ],
;!       "expected": [
;!         "0x00000000005348958934589349590349059034905903CDF343443AB34344343C"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_bytes_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "40",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0x1c8bd0Df5E82F5E029c66bb73ba2c32e85e3E13e"
;!         }
;!       ],
;!       "expected": [
;!         "0x0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "171",
;!             "0"
;!           ],
;!           "caller": "0x64DCcf91378A432DD20274B411140a1C6889C306"
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
;!             "171",
;!             "1"
;!           ],
;!           "caller": "0x26819a3bd2715b51799C5f4093AA6C7F09665495"
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
;!             "171",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0x52eF31c7B6A7bA079A70A9e31741d03d744A0777"
;!         }
;!       ],
;!       "expected": [
;!         "0xA6912B1268B12692B2069"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "171",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!           ],
;!           "caller": "0x5dBeC9f1DC196861A3074Aa6b868D8B2551F966d"
;!         }
;!       ],
;!       "expected": [
;!         "0x0000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFF"
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
;!           "caller": "0xE083AeaC80053f1fD665F8CCfe5E200Bb19C1B27"
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
;!           "caller": "0xd864B20d01a850c3e3d9150C0d3f4B10472659B9"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "255_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "255",
;!             "0x5348958934589349590349059034905903CDF343443AB34344343CCC34343443"
;!           ],
;!           "caller": "0x46225825B017B4CC13bd62fB1D619f83d528c50f"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x465b454d80AB0Dc49174244156263bF6D6f86d0d"
;!         }
;!       ],
;!       "expected": [
;!         "1"
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
;!           "caller": "0x80aE1f1B1801058B13F9FD3Dd0dF55Ff09B3d51D"
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
;!           "caller": "0xBe554e2F3DbeaFB3B07e524B734604db1159D9dC"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0xb741B49B2ca2CD2e892CBFb20bCCe0f3851F6C5a"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0xd0cAc742234B0A267b76b6b35E6C0BD182727EDc"
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
;!           "caller": "0x72f5e8e4363E45818AaaC4A1E62004A48cA59Dcd"
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
;!           "caller": "0xFE5f4146Da00f59c917edDA7f1C2c8AEa9A18d9B"
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
;!           "caller": "0xc521a197e3c766bBdcb801724208A3bc9A060b73"
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
;!           "caller": "0x285Ebf0a9B8c4899D82457BaC23D175bD69b153e"
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
;!           "caller": "0x2c0CD89d32FE91d2D7079dDe110AAAF0B4ea32F4"
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
;!           "caller": "0x0119aCAaD6e50268b13DFf057b8C2a66e4a33fF9"
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
;!           "caller": "0xd2C388f2b7e8A38d5977D168400d44ebfdb4E5E5"
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
;!           "caller": "0xc660A2F3A24266dF988985A9e7b2e87168066Eb7"
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
  %res = call i256 @shr(i256 noundef %arg1, i256 noundef %arg2)
  store i256 %res, ptr addrspace(1) null, align 4
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

define i256 @shr(i256 %shift, i256 %value) #0 {
entry:
  %is_overflow = icmp ugt i256 %shift, 255
  br i1 %is_overflow, label %return, label %shift_value

shift_value:
  %shift_res = lshr i256 %value, %shift
  br label %return

return:
  %res = phi i256 [ 0, %entry ], [ %shift_res, %shift_value ]
  ret i256 %res
}

declare void @llvm.evm.return(ptr addrspace(1), i256)
declare i256 @llvm.evm.calldataload(ptr addrspace(2))

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn }
