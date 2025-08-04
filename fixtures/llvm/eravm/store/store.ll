;! {
;!   "cases": [
;!     {
;!       "name": "0",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0xfB1F62a8182620F0a2b591266dA0E3a19E01B67E"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "1",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "1",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0x3Cf03729f31C4B82eE3481609dada15E7Af07Da3"
;!         }
;!       ],
;!       "expected": [
;!         "0xFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807060504030201",
;!         "0x00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "2",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "2",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0xf665787F906e82C990271E9b63f24FB2320c00A5"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908070605040302",
;!         "0x0100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "3",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "3",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0x772FD4544A8998E764bE263FCd41c0881743BF7b"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403",
;!         "0x020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "4",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "4",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0xa08f4f53606D01AF0570dbd9eAad20B68f99Ff74"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807060504",
;!         "0x03020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "5",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "5",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0x2D3cD0D3E4b44fD5C6513d881748f0aB4F686259"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908070605",
;!         "0x0403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "6",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "6",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0xFfb8590b6D3eA45191b31eB9375dc3Bb8e33731F"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706",
;!         "0x050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "7",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "7",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0x1b7a8586Cb9a4EDD4BB3919aB96A44872F3F5ea0"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807",
;!         "0x06050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "8",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "8",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0xa3fd42Ccc27Cc12c645f185F62e67C50B43b62c5"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908",
;!         "0x0706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "9",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "9",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0x4B20d3D595D2E7d79f867A710Ff6a87746164E25"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09",
;!         "0x080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "10",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "10",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0x663E5FD46280b707d547bA06d3F1A14df9290b66"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A",
;!         "0x09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "11",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "11",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0xF57581C1fc95771DD0D9e802255C8a6199b0D238"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C0B",
;!         "0x0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "12",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "12",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0xf751936a58D09506E58b11b2cEC901eF1ce07724"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D0C",
;!         "0x0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "13",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "13",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0xb23b5D703E2715512B9Ce4E35fe894100C048463"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E0D",
;!         "0x0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "14",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "14",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0x9fA2c2977eC1A1E2623c3cd1330a44E85E9048f7"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F0E",
;!         "0x0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "15",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "15",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0xc19BEDA540346cc165A7ce616065072441d0A0b7"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211100F",
;!         "0x0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "16",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "16",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0x541e56A670DA5a92D90035301973b5Eeda45e771"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A19181716151413121110",
;!         "0x0F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "17",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "17",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0x1b6F1C31C9806196b00666aBE7B13dEb3dFFFabC"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514131211",
;!         "0x100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "18",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "18",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0x13637b307877c47c8797cdB44372B157Bc29d55C"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A1918171615141312",
;!         "0x11100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "19",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "19",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0x8c8f409e15B6C81DAa5B02e019bD0b85B2bA1E22"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A19181716151413",
;!         "0x1211100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "20",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "20",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0xd02c1FCb12772878f93f2091Db581e3aD465758C"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817161514",
;!         "0x131211100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "21",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "21",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0xCF19Aeb3F2150b375079eCe1e5d8d07eA96F6C2A"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A1918171615",
;!         "0x14131211100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "22",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "22",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0xC3be1cc938205124CeDFF4917d7d26bCE6AE233f"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A19181716",
;!         "0x1514131211100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "23",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "23",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0xdCFEbb4eA6a0bf4F11c05cFE97E0eea239113689"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A191817",
;!         "0x161514131211100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "24",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "24",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0x59860Cd33Ef9372Ec3610a13d2E5ca2Ef24f7D96"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A1918",
;!         "0x17161514131211100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "25",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "25",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0xDaB7d10DbAdb3dc4130DA4183680C414d9367A6F"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A19",
;!         "0x1817161514131211100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "26",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "26",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0xEb44Da4e3205B24670569f5fF7C06Ef0e0F3C123"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B1A",
;!         "0x191817161514131211100F0E0D0C0B0A09080706050403020100FFFFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "27",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "27",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0x25dec7e9f12D5DB091F281B9D739Bf62633fe94E"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C1B",
;!         "0x1A191817161514131211100F0E0D0C0B0A09080706050403020100FFFFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "28",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "28",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0xf0e5327a42a7Fa2d309d96e16471e93c61606cdC"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D1C",
;!         "0x1B1A191817161514131211100F0E0D0C0B0A09080706050403020100FFFFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "29",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "29",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0x62E2634390621514663dA23f68123E040bDE9fe2"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E1D",
;!         "0x1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100FFFFFF"
;!       ]
;!     },
;!     {
;!       "name": "30",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "30",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0xcCFBD7C103456691eB1d927c8D6492CAE55Bc646"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E",
;!         "0x1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100FFFF"
;!       ]
;!     },
;!     {
;!       "name": "31",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "31",
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100"
;!           ],
;!           "caller": "0x259043dD3a50e14458c9B4d4a275282146B089D6"
;!         }
;!       ],
;!       "expected": [
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F",
;!         "0x1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100FF"
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

  %offset_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 64
  %offset_ptr_casted = bitcast i8 addrspace(3)* %offset_ptr to i256 addrspace(3)*
  %offset = load i256, i256 addrspace(3)* %offset_ptr_casted, align 32

  %loaded_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 96
  %loaded_ptr_casted = bitcast i8 addrspace(3)* %loaded_ptr to i256 addrspace(3)*
  %loaded = load i256, i256 addrspace(3)* %loaded_ptr_casted, align 32

  store i256 %cell_1, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  store i256 %cell_2, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 32

  %write_offset_ptr = inttoptr i256 %offset to i256 addrspace(1)*
  store i256 %loaded, i256 addrspace(1)* %write_offset_ptr, align 1

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
