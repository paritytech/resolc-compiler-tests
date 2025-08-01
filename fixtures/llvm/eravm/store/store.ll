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
;!           "caller": "0xc4A2449952357353c14f8F9B4Fb8355d3047Fc20"
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
;!           "caller": "0x6593DF6c22C82b9a2215fEA64E894B304734dAa0"
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
;!           "caller": "0x286C14BA851ffaf3FB76E1440f499015f875E6CF"
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
;!           "caller": "0xF0f461a27Ea727399043B8Fa734EADd246eC9d20"
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
;!           "caller": "0xaEC8d58E2A6a8Bc16E82e99577809b4F5e5488b2"
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
;!           "caller": "0xfc24702DCb07DD36C3D872D4DF3B549b163c71F0"
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
;!           "caller": "0xf7C4AB5f5aCB31ad2123A2823763ad75CF106aB2"
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
;!           "caller": "0x75D20b6067D5760F5Ab96f247832163a4D82802a"
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
;!           "caller": "0xB84eE1D99A83cc4397F770D6Db1Cf9C7Be849225"
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
;!           "caller": "0xEd486835C285592684CE16Ae8A79B909c13E75b9"
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
;!           "caller": "0xedcb462AA6300710B56d34388824e7ecE04c8015"
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
;!           "caller": "0xD4C7bb1a9faE28c359F68F578ec699b907990D1c"
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
;!           "caller": "0x0571E753426383Ff11dE3e5A12FcbE1763f3b094"
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
;!           "caller": "0xCB1367240c91bbFDff182CFe42a87D48550400e5"
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
;!           "caller": "0x901983e76A476ce53b0ec81c2F7af51f3A59035f"
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
;!           "caller": "0xe5D8889D2f5BC3cCb4E47E8B200F056178eE1865"
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
;!           "caller": "0xfa49506663A7FF89F5eD8aeb3366D23A16f7BA47"
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
;!           "caller": "0x8E94AB6aA213c57094D94E644a9f0bF1c5f871a4"
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
;!           "caller": "0x54D652B9222104BF6fd726ACc673C00BA80dd8c9"
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
;!           "caller": "0xe24adC764E59c43DAA2e2fa30f5dfc6bf82E955F"
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
;!           "caller": "0xD59751AB17615512e4B2ccC604C60399D7c28bC0"
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
;!           "caller": "0x16e884817Eb6e6574A467AC2dBFcAE89F3E0c086"
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
;!           "caller": "0xfD6dD5437093F74b000fBb81F177c90E49b7cfCA"
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
;!           "caller": "0x57121b3D6D802E8A2E09E574318a6Da65873386D"
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
;!           "caller": "0xde1cDc14ed195DCa685A10BE784cF39E980d2a8C"
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
;!           "caller": "0x8984a5AE1a79a6648fCb5e6E9160718e5c19D466"
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
;!           "caller": "0x9Fb40531531D6a908863fA36888E7FA5fC2e063A"
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
;!           "caller": "0xc42Abc4b99B5C32eB3aa5cDa378Cc1A9709686b9"
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
;!           "caller": "0x98B94a2ccb4AEf6DCB0b8DAFa5E2C0A6493a7113"
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
;!           "caller": "0x1Eee13A5CB18B9327226FADF14610eD5eF4F9764"
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
;!           "caller": "0x30B283ab68e43cD3a31A79E9d325c1e59ca02e4e"
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
;!           "caller": "0x6E41A3e59F999Ef414090A51c3619CA92F57a39f"
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
