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
;!           "caller": "0xfE4beF978F31daf1591dE6CEC907f25eb1270382"
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
;!           "caller": "0x9994065B6180b255064436dd21613EaA45B4CDe5"
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
;!           "caller": "0xae398ba060c3F1228261d4e152ed0572221C03db"
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
;!           "caller": "0x5B27eB11AA513CF2d317af0D4135A9222cB2b20a"
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
;!           "caller": "0x62B0F59D22cd011213634fd871162Ae3aE0AcD33"
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
;!           "caller": "0x71270329FF79Ae8A75178103b6A5807C420c63D1"
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
;!           "caller": "0x10F7897495C18a985fc5a8e62683BBFac2d9a21E"
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
;!           "caller": "0xA760a793ACF688dC89Cc808b1bABE354Ec29B146"
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
;!           "caller": "0x1f0865708B2070242421277c1BAC31fbEdD4245E"
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
;!           "caller": "0x99917aD47d40D17e2B01bAa2E3f9d9d882Fc6a01"
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
;!           "caller": "0x1A5D5f36AEC2C9C376543dAb257916c910924E70"
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
;!           "caller": "0x306d8b2C398cCB0588259f9220800cD846636bA7"
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
;!           "caller": "0x2e0b117615915deb90B7beA0107b5379064A080d"
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
;!           "caller": "0xd1d8Bf329D9D4Eb3496c2B331e1C288a22B9D819"
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
;!           "caller": "0xFAd1ac997D4d55DE9C7966E1f31F8a756418Bd65"
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
;!           "caller": "0xf89bF07149D83995b8102C8764Ea0B83Ca36a3c2"
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
;!           "caller": "0x32A7e2BC9147416137906e545F8f730a1733e54f"
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
;!           "caller": "0x3e8C7E20fd422329237122FB4A784ccfaa498E18"
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
;!           "caller": "0xB5f465741CD5E591b5298fdc814b1D678BF81b9d"
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
;!           "caller": "0x905a033DefBCcD2a81BFF5eA8ac87F26Fe20f68a"
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
;!           "caller": "0x4383cf787F889F29ebA8197598A8a80A543e9AbC"
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
;!           "caller": "0xC310A7Ca8b873c896C818F4aE0f8583B71954892"
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
;!           "caller": "0x5a6Fa97b5bf3A41014bB8B22DC2E20BbA72aDb78"
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
;!           "caller": "0xddCB25a6Fd5d43f120300F7FF6b0b3C14b2b80a6"
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
;!           "caller": "0x0D6E5b1C127BdC309DcFA5353FD5567C71eDD665"
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
;!           "caller": "0x951c29B5C9A75Db84C9435d0De491483934b2b69"
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
;!           "caller": "0x289e5Eb623559e3fFE9cf9e4a8E6564936Fd2EeE"
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
;!           "caller": "0xDF201f2a15660aC41d947F92bba98F74738ede17"
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
;!           "caller": "0x8CeC97D9bF58CA13114108577731eAcaD0e9e556"
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
;!           "caller": "0x6898F504B550Eb800Cd05C155F69304E8cc4df09"
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
;!           "caller": "0xBA5b480110D76af86F68e6f6E2E3B9e15A81BF83"
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
;!           "caller": "0x018A72C846940a425490A91382Fc0C034dFc21b0"
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
