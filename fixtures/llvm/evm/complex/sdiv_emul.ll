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
;!           "caller": "0x6b988b64A2bf49975DD7B5c1048eDe8EEc40BF1d"
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
;!           "caller": "0x5ca7343419B43661045F5B8eba986C9B9F93a6C7"
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
;!           "caller": "0xc57F89fB880179492eED49a6F957D6382B344C30"
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
;!           "caller": "0x159C310145e7338CAd15c7655B229eba84cDF5AA"
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
;!           "caller": "0xCD204B4b8938A092F319dB799eB1f1459CF34560"
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
;!           "caller": "0xb4EADD2C927256B5545c67cb43c5601A3d747b79"
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
;!           "caller": "0x95761C75D3CdF5C16dCA692b5c5d4aAC322848f2"
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
;!             "121563127839120",
;!             "1"
;!           ],
;!           "caller": "0x5d45F89A7284fB62432d9F1349eF0c2b2c00BFBC"
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
;!             "3456789009876545678",
;!             "45116789098765678"
;!           ],
;!           "caller": "0xfD718d50ad8FE833f7eA75B72E972723943606D5"
;!         }
;!       ],
;!       "expected": [
;!         "76"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_to_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "6873546235472354672354762358492378590345034805934590348534",
;!             "6873546235472354672354762358492378590345034805934590348534"
;!           ],
;!           "caller": "0x4e48E9214F80B1f9d32356189723EA8B400156D2"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_plus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x0b000000000000000000000000000000000000000000000000000000000000a1",
;!             "0x0b000000000000000000000000000000000000000000000000000000000000a2"
;!           ],
;!           "caller": "0x50f2d4FcA06Ac12ccc6750A9D7CF418765498228"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "456789098765467892304234234234234234234",
;!             "7863249563247857289401203492047823764573465734573434537783"
;!           ],
;!           "caller": "0xc9fE59a74D0032259Baa9AeaF260327A691B21cF"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "zero_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x6c84c09d042dBa01F06f604E8d9ec2E7D1B9C3aD"
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
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0"
;!           ],
;!           "caller": "0x4E4F8a6f89D60e096e9deF7c55812Cc1eC06e2d1"
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
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xfc8fE42c1F0CA60936bF79a280bA5867F8fe5Cf3"
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
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "1"
;!           ],
;!           "caller": "0x54d8e83cD37878b11eF9d45B91949bad726bA98e"
;!         }
;!       ],
;!       "expected": [
;!         "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "7437834752357434334343423343443375834785783474",
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0xa61f02bE6C248A0845cC4565B92C76A558d66eD0"
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
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "23784273472384723848213821342323233223"
;!           ],
;!           "caller": "0xfD5e0acA4d7D18AF7904c3587663663780213BD6"
;!         }
;!       ],
;!       "expected": [
;!         "2434215393876951004058478270785519540778"
;!       ]
;!     },
;!     {
;!       "name": "max_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x968C019a36806210693bA6F71fa3d567227A01c1"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "zero_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "-1"
;!           ],
;!           "caller": "0x5251b86fDB6e015648bd387d8E914411679F2382"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_one_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-1",
;!             "0"
;!           ],
;!           "caller": "0x12240215A3CbD503887457b8a502dAFE96E361ba"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_one_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-1",
;!             "-1"
;!           ],
;!           "caller": "0x1773b9Bc00763f8Ea6B7Dc2228a58aE8b4bbE3e1"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "zero_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "-433478394034343"
;!           ],
;!           "caller": "0xE1460697fe2214939ff5dBfB275a7DEf1262fb77"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-121563127839120",
;!             "0"
;!           ],
;!           "caller": "0x76C3Cc9923dDCaEBcB843249C3A691d9d92E463D"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_one_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-1",
;!             "-433478394034343"
;!           ],
;!           "caller": "0x7f36a89c22d2a50Cb25484215eCFfAFCc862a1e5"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-121563127839120",
;!             "-1"
;!           ],
;!           "caller": "0x469D87bAA013F15d8587AC460ec08B8071F377B0"
;!         }
;!       ],
;!       "expected": [
;!         "121563127839120"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-3456789009876545678",
;!             "-45116789098765678"
;!           ],
;!           "caller": "0x7d0b1276D8607407a0895f50d8299FAa419EF9E7"
;!         }
;!       ],
;!       "expected": [
;!         "76"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_minus_ordinar_to_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-6873546235472354672354762358492378590345034805934590348534",
;!             "-6873546235472354672354762358492378590345034805934590348534"
;!           ],
;!           "caller": "0x9eFC9b22406F102E5440f21BB4FA79A2FB9fA4cB"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_minus_ordinar_plus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-4975441334415930272106565762092058540570194653601742986070443062840017289377",
;!             "-4975441334415930272106565762092058540570194653601742986070443062840017289378"
;!           ],
;!           "caller": "0x83dcE1817f42D6E39693968094A1d982D5FDE30D"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_minus_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-456789098765467892304234234234234234234",
;!             "-7863249563247857289401203492047823764573465734573434537783"
;!           ],
;!           "caller": "0x241F9Af760C72D2706bE72ddEB28341afF8c0A67"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "zero_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0x10081e80fd7A2288bC84a2Dc9d701953FA694522"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "min_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "0"
;!           ],
;!           "caller": "0x0f1A872820Da28Ebc007f36018C380360265b25c"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_one_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-1",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0xa26b5f3C7a9E499497C9daA98d14F7563C7429f7"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "min_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "-1"
;!           ],
;!           "caller": "0x03B593af8c0C532975bBa22b31654b230c80dC6f"
;!         }
;!       ],
;!       "expected": [
;!         "0x8000000000000000000000000000000000000000000000000000000000000000"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-7437834752357434334343423343443375834785783474",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0xF132e282CcFd954739cD093cAAEb9bc8983513Bc"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "min_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "-23784273472384723848213821342323233223"
;!           ],
;!           "caller": "0x88FF1cEb16f306B73f9072C834eDbe3b90142436"
;!         }
;!       ],
;!       "expected": [
;!         "2434215393876951004058478270785519540778"
;!       ]
;!     },
;!     {
;!       "name": "min_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0x1667E3eF7faCf5580630a98f7bcCF58190067691"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "one_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "-1"
;!           ],
;!           "caller": "0x3d5EB2ACf6614DA7F687322d896b1864Db19C37C"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "minus_one_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-1",
;!             "1"
;!           ],
;!           "caller": "0x68c581C9cdA37BEAd128de147196dFfa71A728e6"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "one_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "-433478394034343"
;!           ],
;!           "caller": "0xaeCF8288b6cdC04d58ad01708a53427278AE0ab4"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_one_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-1",
;!             "433478394034343"
;!           ],
;!           "caller": "0xCc2491704a7D4D459bDA6028609bE0437d74c3e9"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "121563127839120",
;!             "-1"
;!           ],
;!           "caller": "0x1cF5e1979C91027F0bD272366e60f8837c672D88"
;!         }
;!       ],
;!       "expected": [
;!         "-121563127839120"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-121563127839120",
;!             "1"
;!           ],
;!           "caller": "0x9d0AB094e5b5015cb83A4F536fB72EaC25B412Fd"
;!         }
;!       ],
;!       "expected": [
;!         "-121563127839120"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "3456789009876545678",
;!             "-45116789098765678"
;!           ],
;!           "caller": "0x3057d6AC46C067f214C34d169a9Cb2a007284E87"
;!         }
;!       ],
;!       "expected": [
;!         "-76"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-3456789009876545678",
;!             "45116789098765678"
;!           ],
;!           "caller": "0xB557E3F78A02C96c83F1a7f0D18986ecF1737036"
;!         }
;!       ],
;!       "expected": [
;!         "-76"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_minus_ordinar_to_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "6873546235472354672354762358492378590345034805934590348534",
;!             "-6873546235472354672354762358492378590345034805934590348534"
;!           ],
;!           "caller": "0xB2285ee00EccC832e68d697e2E73401B06a3EF9c"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_ordinar_to_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-6873546235472354672354762358492378590345034805934590348534",
;!             "6873546235472354672354762358492378590345034805934590348534"
;!           ],
;!           "caller": "0x8CB31a4cd8252ec9489D46DA6E1d4EB07D6D383a"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_minus_ordinar_plus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "4975441334415930272106565762092058540570194653601742986070443062840017289377",
;!             "-4975441334415930272106565762092058540570194653601742986070443062840017289378"
;!           ],
;!           "caller": "0xDCC13c268A186DdE9c30CdBdA5839eb6a99E6e9F"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_ordinar_plus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-4975441334415930272106565762092058540570194653601742986070443062840017289377",
;!             "4975441334415930272106565762092058540570194653601742986070443062840017289378"
;!           ],
;!           "caller": "0xC4980558d173307209C3d65Fc2106CEFE08b86df"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_minus_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "456789098765467892304234234234234234234",
;!             "-7863249563247857289401203492047823764573465734573434537783"
;!           ],
;!           "caller": "0x00757B4429DCCc7565D0D5E9E9E1e5C665a961Ee"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-456789098765467892304234234234234234234",
;!             "7863249563247857289401203492047823764573465734573434537783"
;!           ],
;!           "caller": "0x26fECCEffc88f9f68b84dB3Bf1F6b9f75b4B8745"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "one_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "1",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0x60A82BD73166A90b8C61cA5DFb279dCDdc9106D6"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_one_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-1",
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x4C4Bfe077bC6811be241547749860622cfDddAd9"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_minus_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "-1"
;!           ],
;!           "caller": "0x9B3B52Cd8c8c52931BeE349ee888C5859cea5134"
;!         }
;!       ],
;!       "expected": [
;!         "0x8000000000000000000000000000000000000000000000000000000000000001"
;!       ]
;!     },
;!     {
;!       "name": "min_one",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "1"
;!           ],
;!           "caller": "0x10c8D6506D85eF0d81F99BA2178B579D47708565"
;!         }
;!       ],
;!       "expected": [
;!         "0x8000000000000000000000000000000000000000000000000000000000000000"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "7437834752357434334343423343443375834785783474",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0x0A3d0c7276Cf432dA3ad4A5715Bc1aa58Bb364D3"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-7437834752357434334343423343443375834785783474",
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x3b2378cF990505A16ac1214212B15575128B289F"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "max_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "-23784273472384723848213821342323233223"
;!           ],
;!           "caller": "0x7deF210BbB100Ebdd2Fbea3282550aB8251de6b0"
;!         }
;!       ],
;!       "expected": [
;!         "-2434215393876951004058478270785519540778"
;!       ]
;!     },
;!     {
;!       "name": "min_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "23784273472384723848213821342323233223"
;!           ],
;!           "caller": "0x3179Dc60DC52Ec44c07Dc5e3Ec8D15A7489e8De0"
;!         }
;!       ],
;!       "expected": [
;!         "-2434215393876951004058478270785519540778"
;!       ]
;!     },
;!     {
;!       "name": "max_min",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "0x8000000000000000000000000000000000000000000000000000000000000000"
;!           ],
;!           "caller": "0x6c70517b6607C63259A29BF9656E9926fb9d1a31"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "min_max",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x8000000000000000000000000000000000000000000000000000000000000000",
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
;!           ],
;!           "caller": "0x01BC43e1fA1381148BbD46681e8c27f7525D267f"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
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
  %res = call i256 @sdiv(i256 noundef %arg1, i256 noundef %arg2)
  store i256 %res, ptr addrspace(1) null, align 4
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

define i256 @sdiv(i256 %arg1, i256 %arg2) #0 {
entry:
  %is_divider_zero = icmp eq i256 %arg2, 0
  br i1 %is_divider_zero, label %return, label %division_overflow

division_overflow:
  %is_divided_int_min = icmp eq i256 %arg1, -57896044618658097711785492504343953926634992332820282019728792003956564819968
  %is_minus_one = icmp eq i256 %arg2, -1
  %is_overflow = and i1 %is_divided_int_min, %is_minus_one
  br i1 %is_overflow, label %return, label %division

division:
  %div_res = sdiv i256 %arg1, %arg2
  br label %return

return:
  %res = phi i256 [ 0, %entry ], [ %arg1, %division_overflow ], [ %div_res, %division ]
  ret i256 %res
}

declare void @llvm.evm.return(ptr addrspace(1), i256)
declare i256 @llvm.evm.calldataload(ptr addrspace(2))

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn }
