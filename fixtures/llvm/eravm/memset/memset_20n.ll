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
;!             "20"
;!           ],
;!           "caller": "0x8248f89D126B3097e92C87b7aEA939FBF4DCCD1F"
;!         }
;!       ],
;!       "expected": [
;!         "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF0B0A09080706050403020100",
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
;!             "20"
;!           ],
;!           "caller": "0x14faBE6dF2B480DC29c508f552dC4edAE03fA888"
;!         }
;!       ],
;!       "expected": [
;!         "0x1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A09080706050403020100",
;!         "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x7eA4B4E1274769EA29A4AC4a0483b4D6e5a8D112"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E000000000000000000000000000000000000000009080706050403020100",
;!         "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x27416a812A73e59bcBf9dBfb38052f0fD46B6207"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1DDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF080706050403020100",
;!         "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x99fDB4FF8070a682d9E020e863ACcDf55869b9D6"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0706050403020100",
;!         "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0xF5aa51C62447FdDAf5e1D16a186A1b04a62D02dD"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B000000000000000000000000000000000000000006050403020100",
;!         "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x048D3325A40F7A7eb48F2aF350d6B9d16CC1a0ef"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1ADEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF050403020100",
;!         "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0xF4C669F7B0aC50db527DF8902AD55c09Af8112c1"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0403020100",
;!         "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0xc04C7f91e9e1467Db79331D7d26cf33e3aeBe113"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A1918000000000000000000000000000000000000000003020100",
;!         "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x3537721a7020514d5A0cEaf36527A3BC599D2F2c"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817DEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF020100",
;!         "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x41C8aD6244B9f5ABA796dc186604Ff5CE2F849Cd"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A19181716FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0100",
;!         "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0xA43AaE81E077871A2091C9f93dF5872a64d9aD4b"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A1918171615000000000000000000000000000000000000000000",
;!         "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x2F5aa82341FEb890aa843CC2d4634315D99aCe73"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514DEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!         "0x3F3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x9FC141d1D30352f732B57B0E56cdbf469C7Ac710"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A19181716151413FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFF3E3D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0xC79eAfEcc11A17af301AF6da77FCdB206CD06F81"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A1918171615141312000000000000000000000000000000000000",
;!         "0x00003D3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0xfc489f4A28cBb0ad2151b1bfdd948706365F875B"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211DEADBEEFDEADBEEFDEADBEEFDEADBEEFDE",
;!         "0xADBEEF3C3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x7BC6aE97f998A10DF7782942F6219D07Ff2d6eA6"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A19181716151413121110FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFF3B3A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0xB4e0737b27b4Ab690B46A3Fb8f5C978af53f7f6d"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F000000000000000000000000000000",
;!         "0x00000000003A393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x35D8B1f1f8eE4B3BEA1A8B798F86837f8857F613"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0EDEADBEEFDEADBEEFDEADBEEFDEAD",
;!         "0xBEEFDEADBEEF393837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x3D8a137BA67B1d6B521857F530dBdC2e31651756"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0DFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFF3837363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x817B6fF38a05c6be60E666C5D26Bdc3D5bEB47a7"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C000000000000000000000000",
;!         "0x000000000000000037363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x77b1cc950aE092Cb46806E72686e85ba8AEA0E0c"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0BDEADBEEFDEADBEEFDEADBE",
;!         "0xEFDEADBEEFDEADBEEF363534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x1018273e63e5F950aa2815E37Cdc017F59A1cf8f"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0AFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFF3534333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x75D8FeF5f0576d8e061676628589337A71dC9685"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09000000000000000000",
;!         "0x000000000000000000000034333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0xA87392c1B2cA44BD461F772D0d986dBe094d7Fc1"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908DEADBEEFDEADBEEF",
;!         "0xDEADBEEFDEADBEEFDEADBEEF333231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x265430e47b7EBaa60bD6Cad3D6E3C0a85DcDF594"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807FFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFF3231302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0xa6771E6bf618e0215A01388Ed07f5B99C0b4d5C0"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706000000000000",
;!         "0x000000000000000000000000000031302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0xF7CC929AC235E193Fa1dfb09A1a10D6dD113d203"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908070605DEADBEEFDE",
;!         "0xADBEEFDEADBEEFDEADBEEFDEADBEEF302F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x18b66EEDA05752CB005Fcdf59435e2E253cB3408"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807060504FFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0xc6A130043815CD96F934D0F01071372c7A55cB94"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403000000",
;!         "0x00000000000000000000000000000000002E2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x6B8cc9AD895357e0B801eA25d4aBd3FcF4eb618C"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908070605040302DEAD",
;!         "0xBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF2D2C2B2A29282726252423222120",
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
;!             "20"
;!           ],
;!           "caller": "0x16FF2d913A35ceC8B56e9499d0A335b40985b465"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807060504030201FF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C2B2A29282726252423222120",
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
