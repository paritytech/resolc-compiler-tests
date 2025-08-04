;! {
;!   "cases": [
;!     {
;!       "name": "0",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!             "0",
;!             "32"
;!           ],
;!           "caller": "0x6C82186b92859f30D5c942ac504c1A13F75F0F27"
;!         }
;!       ],
;!       "expected": [
;!         "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!         "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "1",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "1",
;!             "32"
;!           ],
;!           "caller": "0x82D767bD8cC7f83E5927399C5Ec9fdaCEFE7FDB2"
;!         }
;!       ],
;!       "expected": [
;!         "0x1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFF3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "2",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0x0000000000000000000000000000000000000000000000000000000000000000",
;!             "2",
;!             "32"
;!           ],
;!           "caller": "0x0ea3C2278d1FFdBceC2F1490099B99EC807CB586"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E000000000000000000000000000000000000000000000000000000000000",
;!         "0x00003D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "3",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!             "3",
;!             "32"
;!           ],
;!           "caller": "0xe951202CEa35bd911465470717B16AD7f49102bf"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1DDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDE",
;!         "0xADBEEF3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "4",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "4",
;!             "32"
;!           ],
;!           "caller": "0x2E1AeD18Be1Ded19a173882B676A4c89245aa82e"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFF3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "5",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0x0000000000000000000000000000000000000000000000000000000000000000",
;!             "5",
;!             "32"
;!           ],
;!           "caller": "0x6d96C1A5f6848893bF5b096bdfb6864dCD52f475"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B000000000000000000000000000000000000000000000000000000",
;!         "0x00000000003A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "6",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!             "6",
;!             "32"
;!           ],
;!           "caller": "0xD3eED172310fE15144C0abdE86943A5D3abec625"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1ADEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEAD",
;!         "0xBEEFDEADBEEF393837363534333231302F2E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "7",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "7",
;!             "32"
;!           ],
;!           "caller": "0x3CB8e519467F0624198913a86Dd07bd4580eAC48"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFF3837363534333231302F2E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "8",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0x0000000000000000000000000000000000000000000000000000000000000000",
;!             "8",
;!             "32"
;!           ],
;!           "caller": "0xce1B339c9cad4Cf36E8dC820BC4f1506501d65f6"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A1918000000000000000000000000000000000000000000000000",
;!         "0x000000000000000037363534333231302F2E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "9",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!             "9",
;!             "32"
;!           ],
;!           "caller": "0x96c7f2E7cbde730b33a2D5b3Be2485ad09452A16"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817DEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBE",
;!         "0xEFDEADBEEFDEADBEEF363534333231302F2E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "10",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "10",
;!             "32"
;!           ],
;!           "caller": "0xA61f581aE5044e2DF4B9Faf2db2A7A7B47DF3db0"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A19181716FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFF3534333231302F2E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "11",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0x0000000000000000000000000000000000000000000000000000000000000000",
;!             "11",
;!             "32"
;!           ],
;!           "caller": "0xAB02EE568ef3cfEf72539695d59a25B72Cea41D5"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A1918171615000000000000000000000000000000000000000000",
;!         "0x000000000000000000000034333231302F2E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "12",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!             "12",
;!             "32"
;!           ],
;!           "caller": "0xB0511bFe9d759B55A777043b69f7e79bc9F81d3C"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514DEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!         "0xDEADBEEFDEADBEEFDEADBEEF333231302F2E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "13",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "13",
;!             "32"
;!           ],
;!           "caller": "0x3a7b12D482a8E68E7AB77d40459E8685B23994Df"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A19181716151413FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFF3231302F2E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "14",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0x0000000000000000000000000000000000000000000000000000000000000000",
;!             "14",
;!             "32"
;!           ],
;!           "caller": "0xe9e64F2D199Fc0c1703F94B6A403E46676574DB9"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A1918171615141312000000000000000000000000000000000000",
;!         "0x000000000000000000000000000031302F2E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "15",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!             "15",
;!             "32"
;!           ],
;!           "caller": "0xa0D4aFEfce4B0b15C6b6901daf47498cb99fF15f"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211DEADBEEFDEADBEEFDEADBEEFDEADBEEFDE",
;!         "0xADBEEFDEADBEEFDEADBEEFDEADBEEF302F2E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "16",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "16",
;!             "32"
;!           ],
;!           "caller": "0x7AFDA6513a3745D3fFdB0d2460c5b4F405340a2f"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A19181716151413121110FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "17",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0x0000000000000000000000000000000000000000000000000000000000000000",
;!             "17",
;!             "32"
;!           ],
;!           "caller": "0x90109efB5AAd74EF2d25f7fBA0F52f8bAb2B79Eb"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F000000000000000000000000000000",
;!         "0x00000000000000000000000000000000002E2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "18",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!             "18",
;!             "32"
;!           ],
;!           "caller": "0xa03f7D75f245F0B1f1cB3F0d25712Da119f549a8"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0EDEADBEEFDEADBEEFDEADBEEFDEAD",
;!         "0xBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF2D2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "19",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "19",
;!             "32"
;!           ],
;!           "caller": "0xCE830838CD475381A1C965fDfF2771D05a6A4704"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0DFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C2B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "20",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0x0000000000000000000000000000000000000000000000000000000000000000",
;!             "20",
;!             "32"
;!           ],
;!           "caller": "0xf8dc46aaA692b61F240FFAAD89E174af40E0b9ea"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C000000000000000000000000",
;!         "0x00000000000000000000000000000000000000002B2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "21",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!             "21",
;!             "32"
;!           ],
;!           "caller": "0x574d4722e8cA3492e4ce14Dd12f5a7f1FCb4590b"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0BDEADBEEFDEADBEEFDEADBE",
;!         "0xEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF2A29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "22",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "22",
;!             "32"
;!           ],
;!           "caller": "0x32F80eDAaF393aCdd3718A93ef776c7b15Af92a1"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0AFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF29282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "23",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0x0000000000000000000000000000000000000000000000000000000000000000",
;!             "23",
;!             "32"
;!           ],
;!           "caller": "0xaC215Df3b9cBcA7b5764283b360C71Bb881BC227"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09000000000000000000",
;!         "0x0000000000000000000000000000000000000000000000282726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "24",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!             "24",
;!             "32"
;!           ],
;!           "caller": "0x5c3C05c3FA90759008B5544674Ea7A64E106A36f"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908DEADBEEFDEADBEEF",
;!         "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF2726252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "25",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "25",
;!             "32"
;!           ],
;!           "caller": "0x896F6cd22602996Cba0E32873C22022182E08b3b"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807FFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF26252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "26",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0x0000000000000000000000000000000000000000000000000000000000000000",
;!             "26",
;!             "32"
;!           ],
;!           "caller": "0x6F09a3B0968620f83c44EcE3224e22C7aF3A6bA0"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706000000000000",
;!         "0x0000000000000000000000000000000000000000000000000000252423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "27",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!             "27",
;!             "32"
;!           ],
;!           "caller": "0x94EA763644689CB234A194CF4ac187661A5737d8"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908070605DEADBEEFDE",
;!         "0xADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF2423222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "28",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "28",
;!             "32"
;!           ],
;!           "caller": "0xD6ad6653a35ADE76B336577cD7aA0dda54c756D9"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807060504FFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF23222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "29",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0x0000000000000000000000000000000000000000000000000000000000000000",
;!             "29",
;!             "32"
;!           ],
;!           "caller": "0x627916eD82943da5167B986F7DFC5FB3ac9fa608"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403000000",
;!         "0x0000000000000000000000000000000000000000000000000000000000222120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "30",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!             "30",
;!             "32"
;!           ],
;!           "caller": "0xDCee33426Cc992Fdd045C86e7176B891b60b16Da"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908070605040302DEAD",
;!         "0xBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF2120",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
;!       ]
;!     },
;!     {
;!       "name": "31",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403020100",
;!             "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
;!             "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140",
;!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!             "31",
;!             "32"
;!           ],
;!           "caller": "0x027C2572B80b6e2ddcaE9238eE332736bf7dB7B1"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807060504030201FF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20",
;!         "0x5F5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
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

  %cell_3_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 64
  %cell_3_ptr_casted = bitcast i8 addrspace(3)* %cell_3_ptr to i256 addrspace(3)*
  %cell_3 = load i256, i256 addrspace(3)* %cell_3_ptr_casted, align 32

  %value_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 96
  %value_ptr_casted = bitcast i8 addrspace(3)* %value_ptr to i256 addrspace(3)*
  %value = load i256, i256 addrspace(3)* %value_ptr_casted, align 32

  %offset_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 128
  %offset_ptr_casted = bitcast i8 addrspace(3)* %offset_ptr to i256 addrspace(3)*
  %offset = load i256, i256 addrspace(3)* %offset_ptr_casted, align 32

  %size_ptr = getelementptr i8, i8 addrspace(3)* %calldata_ptr, i256 160
  %size_ptr_casted = bitcast i8 addrspace(3)* %size_ptr to i256 addrspace(3)*
  %size = load i256, i256 addrspace(3)* %size_ptr_casted, align 32

  store i256 %cell_1, i256 addrspace(1)* inttoptr (i256 0 to i256 addrspace(1)*), align 32
  store i256 %cell_2, i256 addrspace(1)* inttoptr (i256 32 to i256 addrspace(1)*), align 32
  store i256 %cell_3, i256 addrspace(1)* inttoptr (i256 64 to i256 addrspace(1)*), align 32

  %write_ptr = inttoptr i256 %offset to i256 addrspace(1)*
  call void @__memset_uma_as1(i256 addrspace(1)* align 1 %write_ptr, i256 %value, i256 %size)

  %abi_data = shl i256 96, 96
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

declare void @__memset_uma_as1(i256 addrspace(1)*, i256, i256)

attributes #0 = { noreturn nounwind }
attributes #1 = { nounwind }
