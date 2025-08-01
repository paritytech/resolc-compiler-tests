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
;!           "caller": "0x077A21c284Cf6489c8181fcA935b5bb3d0B4d048"
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
;!           "caller": "0xCc6d97CBcCBF4499abca0cAB3275b391F4e2aCB7"
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
;!           "caller": "0xdF3Fea05A9Dd55b530083a208D639FeBFbc00A3A"
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
;!           "caller": "0x48EF1463E223Eff357Be7E0B2C238e7eDDC7C28b"
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
;!           "caller": "0x52D0992561B984cE114539cA69ab2CFBE56CaF82"
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
;!           "caller": "0x400C5FdE5e3A1D616759849eF06bfBe1E6C0D1b8"
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
;!           "caller": "0x3F431BEc3c39961FF6441FBFF2815e7B8b0b115f"
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
;!           "caller": "0x64B65c9884557Caf02C7Ace163E4Ae9457c64746"
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
;!           "caller": "0x367F329A9820D99d179E7E7080b87C463756101a"
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
;!           "caller": "0x0dD833aa72211D6393db4Fa6221e39942De51c79"
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
;!           "caller": "0x1f29Be779588b40E10c6cFe3D836D3d585c32Be5"
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
;!           "caller": "0x350B5d035880cE336701483171572190a40b89f2"
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
;!           "caller": "0x927F7dbfd9a3BCa85B397e363341c651bF832a1e"
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
;!           "caller": "0x6a83B5b77Ef441095E63D05D93837790aB84791b"
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
;!           "caller": "0xC089155CDfB69eb459Fa85AEFc3F52c7D2e5cF31"
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
;!           "caller": "0x3560F1960cDB03D6d31AacFdE90811a70F8055d4"
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
;!           "caller": "0x52212d9051f304aBa8902F59DF2B2C2A3A147b8D"
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
;!           "caller": "0x05F9DbEC5d425E3C03c2F4376a4c845AD23a8797"
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
;!           "caller": "0xb8B2d8D0f80f80200Fe3C74C04a96f6c35612990"
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
;!           "caller": "0xC1a1a3c5E90410FF20211c3D445b721Bd20F76F7"
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
;!           "caller": "0x48c93b55089C801CDF8673b2Ea3039dF8749D753"
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
;!           "caller": "0x7d3b0080ab137cA9215F6c9ab54cAC91C3D37550"
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
;!           "caller": "0xF6c9480880fd7BBDcaAdef5e47bC2FB1BF684A6E"
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
;!           "caller": "0xeD502787faF57f2E552b6043758058Cad566B6A9"
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
;!           "caller": "0xD1817Eaf46168b7ead5840E41F676a8ec71F3b02"
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
;!           "caller": "0x8E92c6384d623C6b5Df51412b6009980523b8739"
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
;!           "caller": "0xDC831627318BF6274fE2Fa261800acd6A421e36B"
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
;!           "caller": "0x09Fe68b39aD3adDc707DD05109F75d7678948Dc6"
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
;!           "caller": "0xDec1532B1CA6B1f49971544E1b40583613bcd748"
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
;!           "caller": "0xDC2E3049B812960aAF8f94ECeff98FD192102aa3"
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
;!           "caller": "0x18ef6f4ECb9f8f38848B91B92C671e790919dAB4"
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
;!           "caller": "0xECd697a5F82560bD5d3fD648f480761671a62434"
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
