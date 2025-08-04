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
;!             "64"
;!           ],
;!           "caller": "0x8097dF45943233B88EF046d2f4876Bd8137c0b81"
;!         }
;!       ],
;!       "expected": [
;!         "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!         "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
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
;!             "64"
;!           ],
;!           "caller": "0x74D54FA7d0F1976A05433B6cC9ea4c2b614258dD"
;!         }
;!       ],
;!       "expected": [
;!         "0x1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFF5E5D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0xDdDAC86f807Bd5AC8dF953E95e905267AEFc45c5"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E000000000000000000000000000000000000000000000000000000000000",
;!         "0x0000000000000000000000000000000000000000000000000000000000000000",
;!         "0x00005D5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0xB6066C3f4C4d58d269E82019676c89de6393AB39"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1DDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDE",
;!         "0xADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDE",
;!         "0xADBEEF5C5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0x39F0Ed0d92C5f5F985E079D9d416C1c78D3F4f59"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFF5B5A595857565554553251504F4E4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0xbe2De779Ae04b159bE88B8d64d2c0d6768905af7"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B000000000000000000000000000000000000000000000000000000",
;!         "0x0000000000000000000000000000000000000000000000000000000000000000",
;!         "0x00000000005A595857565554553251504F4E4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0xDe9188B74dE77ACF993d5F5cAd4Cd928952a47ae"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1ADEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEAD",
;!         "0xBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEAD",
;!         "0xBEEFDEADBEEF595857565554553251504F4E4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0x25F018CeeB2C6D36127682a06454498a827F81A9"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFF5857565554553251504F4E4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0xCB290856Dc4531530585Ed9302941FfFa11B4551"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A1918000000000000000000000000000000000000000000000000",
;!         "0x0000000000000000000000000000000000000000000000000000000000000000",
;!         "0x000000000000000057565554553251504F4E4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0x9FBf08bE4b44fDc313Aa67e5452A06a1D4672CeE"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817DEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBE",
;!         "0xEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBE",
;!         "0xEFDEADBEEFDEADBEEF565554553251504F4E4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0xb0dAB9D3893d36C1dC86bb5b4eeBFA6E97985FB2"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A19181716FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFF5554553251504F4E4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0x000D25f8667da4f1a2ff697D8F11724186765B63"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A1918171615000000000000000000000000000000000000000000",
;!         "0x0000000000000000000000000000000000000000000000000000000000000000",
;!         "0x000000000000000000000054553251504F4E4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0xdfFe44fCdfAa52B557C1E0B2E0dDd81f78780E7A"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514DEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!         "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!         "0xDEADBEEFDEADBEEFDEADBEEF553251504F4E4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0x356406D6850AF47E84B8Cf0409e8BB53C997aAba"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A19181716151413FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFF3251504F4E4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0x0dDB2F795dF2Ec83Dc9641D04cfF613c505ddf94"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A1918171615141312000000000000000000000000000000000000",
;!         "0x0000000000000000000000000000000000000000000000000000000000000000",
;!         "0x000000000000000000000000000051504F4E4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0xD4A435952FdF046Cf74a3e52f655041967cDF63F"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211DEADBEEFDEADBEEFDEADBEEFDEADBEEFDE",
;!         "0xADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDE",
;!         "0xADBEEFDEADBEEFDEADBEEFDEADBEEF504F4E4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0xb51AfdF8792FFfc08Aa97C5EE9701F273B0056B2"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A19181716151413121110FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4E4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0x4656E5B160e773b71c809f5D3ABab13C683614AE"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F000000000000000000000000000000",
;!         "0x0000000000000000000000000000000000000000000000000000000000000000",
;!         "0x00000000000000000000000000000000004E4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0xB24Dd86cCcdD899250Cf7214f9b0CA0FC9098F01"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0EDEADBEEFDEADBEEFDEADBEEFDEAD",
;!         "0xBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEAD",
;!         "0xBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF4D4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0x6d28A03640B107833A71d6A3907c5945857e0acD"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0DFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C4B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0x7fbD5B9f0C3ABCe1975B0DCA48844c6c1909d101"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C000000000000000000000000",
;!         "0x0000000000000000000000000000000000000000000000000000000000000000",
;!         "0x00000000000000000000000000000000000000004B4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0xa2343f8bB56B7113eF1735557E272A06a3cD86F5"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0BDEADBEEFDEADBEEFDEADBE",
;!         "0xEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBE",
;!         "0xEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF4A49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0x42106f7133c066d71fa5eEF378a281bdf0E12375"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0AFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0x7329f3a599928f1B44C85E94163245f87cc739B5"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09000000000000000000",
;!         "0x0000000000000000000000000000000000000000000000000000000000000000",
;!         "0x0000000000000000000000000000000000000000000000484746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0x29732bb286bB7729a34fE20331e33be36d9ceEb3"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908DEADBEEFDEADBEEF",
;!         "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF",
;!         "0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF4746454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0x4837857c9BB5301BE05e25a3c2c8A0c77AE13fb1"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807FFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0x5274e2E4428DAa57574E65E89e4eDeAc21795b5e"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706000000000000",
;!         "0x0000000000000000000000000000000000000000000000000000000000000000",
;!         "0x0000000000000000000000000000000000000000000000000000454443424140"
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
;!             "64"
;!           ],
;!           "caller": "0x619B0E9271E3bcceA6E93FbF1418a2DEffe03Abd"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908070605DEADBEEFDE",
;!         "0xADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDE",
;!         "0xADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF4443424140"
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
;!             "64"
;!           ],
;!           "caller": "0x4B928B5bD34FA801C9aeEE5bD92AE2ed0A3bE15A"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807060504FFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF43424140"
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
;!             "64"
;!           ],
;!           "caller": "0x5763a4eDCC44FE99f1A2F362374b14c1C04AE5A3"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A09080706050403000000",
;!         "0x0000000000000000000000000000000000000000000000000000000000000000",
;!         "0x0000000000000000000000000000000000000000000000000000000000424140"
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
;!             "64"
;!           ],
;!           "caller": "0xA6ee231Fe5E380642975FDb2f0b434A86a9d3001"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A0908070605040302DEAD",
;!         "0xBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEAD",
;!         "0xBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF4140"
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
;!             "64"
;!           ],
;!           "caller": "0x045d8ae22bfd5e9310a1bd4e93f6340Aac29c601"
;!         }
;!       ],
;!       "expected": [
;!         "0x1F1E1D1C1B1A191817161514131211100F0E0D0C0B0A090807060504030201FF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
;!         "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40"
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
