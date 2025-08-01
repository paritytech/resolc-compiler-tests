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
;!           "caller": "0x9eE0Fe62510b8056280B6F4BF0445833a4240463"
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
;!           "caller": "0xCA08C9944d5fc29E25E13B40Ce7C5D235cBd2493"
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
;!           "caller": "0xd2A9328Ac85E8dfC19eD085B076838AA283Fec12"
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
;!           "caller": "0x924B18c017406f60A96651D5d3941AeB0fdFBE87"
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
;!           "caller": "0x9ccD41d6e2feA5B32affe96D813440fedc837c4B"
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
;!           "caller": "0x4C9E7bA68C0835091d239B938295d2bBF2fcFAB9"
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
;!           "caller": "0xa7C4Ad961Be6A25C16960e362477b26115aD724f"
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
;!           "caller": "0xFa4336757E2a568445b5d0382F4e9C22a4E1b909"
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
;!           "caller": "0xC5F6Ce99E95f820f5b4ca9a45d53d8a4cD9eB54b"
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
;!           "caller": "0xeAeE377d4D703F7a9534916474D0237068abDC27"
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
;!           "caller": "0xFb286D4bC8e8084778b59Bc1F37FDb099b9FF7fD"
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
;!           "caller": "0xC4b8140CA247E1A20662C7B1F8Cf1d163208d714"
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
;!           "caller": "0x40624b923C2cD052BA6749B7877Adc8B2626C25d"
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
;!           "caller": "0x888C57733cB06b9D7E3a6F220890017916Bb2420"
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
;!           "caller": "0x1658c4FeB13e927893767354f326Be937881b296"
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
;!           "caller": "0x94186FA3A9f89Fe89fcF8702fad22eEFBBe1b62d"
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
;!           "caller": "0x950A538AB0854A0ECcDEE41318977dd22290a610"
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
;!           "caller": "0xFe8DB4805C435AeFFaE9B0F4d9e3D18225560a58"
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
;!           "caller": "0x800Be49b4B297bA60038D47B30312287C4A1A3f1"
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
  %res = call i256 @__exp(i256 noundef %arg1, i256 noundef %arg2)
  store i256 %res, ptr addrspace(1) null, align 4
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

declare i256 @__exp(i256 %arg1, i256 %arg2) #0
declare void @llvm.evm.return(ptr addrspace(1), i256)
declare i256 @llvm.evm.calldataload(ptr addrspace(2))

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind readnone willreturn }
