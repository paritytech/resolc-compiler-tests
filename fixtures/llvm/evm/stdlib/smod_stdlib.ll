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
;!           "caller": "0x63a7b69e7Fc4A2f52D6a992cf206388a787fBB3b"
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
;!           "caller": "0x74f1e752aEd594d175EF6B370694b27bf8a9EE9B"
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
;!           "caller": "0x98a97075D83aBe33B58E6ED9d13E3C331355d408"
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
;!           "caller": "0x1422e0F99b8496Aa1e2F2355f18D5A1716ff5c62"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x913C9F69c97FA49bbc3846c71ef507c33a674deb"
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
;!           "caller": "0xC1c071137E205ddd5D83418FbfAAB8CE9DDD9256"
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
;!           "caller": "0x48bEd7cf9FD2D8F954787b2F48ff322a92c02D7B"
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
;!           "caller": "0x4E272A2420cd04B54131595d39e5e97eE671cAFd"
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
;!             "3456789009876545678",
;!             "45116789098765678"
;!           ],
;!           "caller": "0x8888c89f1bA2c9887D5f3A526C24FC1fb4e3f0B6"
;!         }
;!       ],
;!       "expected": [
;!         "27913038370354150"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "15903955902367335447395448984",
;!             "67897657890876"
;!           ],
;!           "caller": "0xeD229B16c833244aB282579C9A2E0C44294Fec2c"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_plus_one_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "0x0b000000000000000000000000000000000000000000000000000000000000a2",
;!             "0x0b000000000000000000000000000000000000000000000000000000000000a1"
;!           ],
;!           "caller": "0x75DB6FC886ac403608fEd90a2e3Cf8fD36F65110"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_ordinar_equals",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "6873546235472354672354762358492378590345034805934590348534",
;!             "6873546235472354672354762358492378590345034805934590348534"
;!           ],
;!           "caller": "0x800f7a2281985d39E5CFCd4fcF4A4E48a0CEA299"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x90eA18956Dca70A2100783A1B7Ee7Fe012212910"
;!         }
;!       ],
;!       "expected": [
;!         "0x0b000000000000000000000000000000000000000000000000000000000000a1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_bigger_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "456789098765467892304234234234234234234",
;!             "7863249563247857289401203492047823764573465734573434537783"
;!           ],
;!           "caller": "0xB43A0767a633B55C6dcd3C74Eb6AE78A2Ddf46ae"
;!         }
;!       ],
;!       "expected": [
;!         "456789098765467892304234234234234234234"
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
;!           "caller": "0x8153bdb54E00bb92d4Eb4B5799721528dB1a150B"
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
;!           "caller": "0xE2B196af5bB90f582ec86470B20d174eC26Cf7db"
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
;!           "caller": "0x3946d3Cbd966d49B39Cd36B44F6a6A566Ba63a10"
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
;!             "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
;!             "1"
;!           ],
;!           "caller": "0x6b86101Fd25c713fd72474c35A07AfBa4A7b1C5d"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x05C9bD02e28D9c9272dA49AdbBCB1f3bBdBcCd3B"
;!         }
;!       ],
;!       "expected": [
;!         "7437834752357434334343423343443375834785783474"
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
;!           "caller": "0x573c8A7379419089E39551287748BC1B173bA27E"
;!         }
;!       ],
;!       "expected": [
;!         "15101022404869751666946096985411952473"
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
;!           "caller": "0x4F36A21a5A4f8F6370D9d6267a8E0F080d730f47"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0xa45875100f4117FbfDd41b1C74a74a9a555D8E79"
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
;!           "caller": "0x8a25CcF4F40620648cbFFB4B3c891c4cA77cFF23"
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
;!           "caller": "0xBB4b10b43b87234bB92AC4Ec7709c5Bb65f6f7B4"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x736346170a56726457A1be016dEE2834b127132d"
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
;!           "caller": "0xD20E4B769810161D047eD651601215E5e818D63f"
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
;!           "caller": "0x773a327977a52f41252f5Cf486f5fB809c68eD95"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
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
;!           "caller": "0xddc4f48FF58eB02BE750304E2c287F94f1fc71B4"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0xE4fd34e38E73fdF38780B2a5AACF881616e99fd1"
;!         }
;!       ],
;!       "expected": [
;!         "-27913038370354150"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_minus_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-15903955902367335447395448984",
;!             "-67897657890876"
;!           ],
;!           "caller": "0x1AfC03c89979d906c66F3524dA68F353d69c4dfd"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_plus_one_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-4975441334415930272106565762092058540570194653601742986070443062840017289378",
;!             "-4975441334415930272106565762092058540570194653601742986070443062840017289377"
;!           ],
;!           "caller": "0xc9361E3DFD79A2a555f9A4BD23752A3C30CDA1F5"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_minus_ordinar_equals",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-6873546235472354672354762358492378590345034805934590348534",
;!             "-6873546235472354672354762358492378590345034805934590348534"
;!           ],
;!           "caller": "0x8E88C76650DEA82d559af1D970208631a0b16406"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x77495C6886361D8e9B908b8da09727694176a1Da"
;!         }
;!       ],
;!       "expected": [
;!         "-4975441334415930272106565762092058540570194653601742986070443062840017289377"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_bigger_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-456789098765467892304234234234234234234",
;!             "-7863249563247857289401203492047823764573465734573434537783"
;!           ],
;!           "caller": "0x81deBeCb50084F8F5b2163AE2Ff041aB6D5a777d"
;!         }
;!       ],
;!       "expected": [
;!         "-456789098765467892304234234234234234234"
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
;!           "caller": "0xDdf80D5467Bbc0041e5512CB743A62A73ef91573"
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
;!           "caller": "0xA3E1Eb7e41B14bEa090b6AED7B3Fc91E828FD457"
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
;!           "caller": "0x9C679C27661e537b20EB8b689B81990731DeF1c7"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
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
;!           "caller": "0xAA527A7f5db8b40A87A8A01E5Ebc5441B03a7082"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x64D245777892Ef8599697c85b56711d6a3b6dFbA"
;!         }
;!       ],
;!       "expected": [
;!         "-7437834752357434334343423343443375834785783474"
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
;!           "caller": "0x2Ad16f8eEf66D1445a3864E2786bcb9b6940c2Db"
;!         }
;!       ],
;!       "expected": [
;!         "-15101022404869751666946096985411952474"
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
;!           "caller": "0xD5A75C586c5F396396E186Ec0Ba2B99843BAA324"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x8e975cdBB63763Bbca761a015Ab17490bB8F3cf2"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x8bcf84409aA0A906bAcCa822f1C0aB4E759f0D97"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x6cB44D9c8ce8d2a61B8825e3a1Ca28811cb6EB51"
;!         }
;!       ],
;!       "expected": [
;!         "1"
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
;!           "caller": "0xf3Fce4b13FFfFce4442A44565DDBea1F98eE1AE6"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
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
;!           "caller": "0xBC527fFf6D93b410a5Fbd3B6bF93934C232A1681"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x81742a45C87Fc346818C2562Cb99EEB0E647E863"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x2aDd592d880591AD9081606FBB469a484aA9fEc6"
;!         }
;!       ],
;!       "expected": [
;!         "27913038370354150"
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
;!           "caller": "0x597dAA24429508b9E82d9aD7C9F7AA2b9F58d541"
;!         }
;!       ],
;!       "expected": [
;!         "-27913038370354150"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_minus_ordinar_to_zero",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "15903955902367335447395448984",
;!             "-67897657890876"
;!           ],
;!           "caller": "0x1883b358341d754e471Cc9922DA572c57b9cEDb8"
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
;!             "-15903955902367335447395448984",
;!             "67897657890876"
;!           ],
;!           "caller": "0x9afB9De3948C953FF19B1293aADB03B15b763fB5"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_plus_one_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "4975441334415930272106565762092058540570194653601742986070443062840017289378",
;!             "-4975441334415930272106565762092058540570194653601742986070443062840017289377"
;!           ],
;!           "caller": "0xE6F63F955282c28411Ba71bF623Fc462E5854676"
;!         }
;!       ],
;!       "expected": [
;!         "1"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_plus_one_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-4975441334415930272106565762092058540570194653601742986070443062840017289378",
;!             "4975441334415930272106565762092058540570194653601742986070443062840017289377"
;!           ],
;!           "caller": "0x83E8869FB36f9BCdFe58856387E1c917F4a4aE1B"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_minus_ordinar_equals",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "6873546235472354672354762358492378590345034805934590348534",
;!             "-6873546235472354672354762358492378590345034805934590348534"
;!           ],
;!           "caller": "0x799E8e6D11Ccb89B75018DC8Aa5944c71481B182"
;!         }
;!       ],
;!       "expected": [
;!         "0"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_ordinar_equals",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-6873546235472354672354762358492378590345034805934590348534",
;!             "6873546235472354672354762358492378590345034805934590348534"
;!           ],
;!           "caller": "0x532984cf17B5A4880F23dAB93Be6D7CF8A357423"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0x73A4498624afF573eFcc6005D69312b19768817a"
;!         }
;!       ],
;!       "expected": [
;!         "4975441334415930272106565762092058540570194653601742986070443062840017289377"
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
;!           "caller": "0xE83c806FFdb4a5cA9d786aF6b292e2Cbda8c6F38"
;!         }
;!       ],
;!       "expected": [
;!         "-4975441334415930272106565762092058540570194653601742986070443062840017289377"
;!       ]
;!     },
;!     {
;!       "name": "ordinar_bigger_minus_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "456789098765467892304234234234234234234",
;!             "-7863249563247857289401203492047823764573465734573434537783"
;!           ],
;!           "caller": "0xD1024cCE0F5D970B0A26dD32f5f7f71f0D5b9D2b"
;!         }
;!       ],
;!       "expected": [
;!         "456789098765467892304234234234234234234"
;!       ]
;!     },
;!     {
;!       "name": "minus_ordinar_bigger_ordinar",
;!       "inputs": [
;!         {
;!           "method": "#fallback",
;!           "calldata": [
;!             "-456789098765467892304234234234234234234",
;!             "7863249563247857289401203492047823764573465734573434537783"
;!           ],
;!           "caller": "0x8B4A1052C2A28Dcc7429df7661F4E8F549Cbc8B9"
;!         }
;!       ],
;!       "expected": [
;!         "-456789098765467892304234234234234234234"
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
;!           "caller": "0xC532fc63c8370338B00a082eB4370654B6b77374"
;!         }
;!       ],
;!       "expected": [
;!         "1"
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
;!           "caller": "0x68331565fb6CD0f8b66568902B36de44a3294583"
;!         }
;!       ],
;!       "expected": [
;!         "-1"
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
;!           "caller": "0x8eDf3a1BF41c157BB9f5127010a1866FF00500e4"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0xf5F0eC28330Acfa2b4a03A59E437370F4B456E5f"
;!         }
;!       ],
;!       "expected": [
;!         "0"
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
;!           "caller": "0xad2f8D99c2e5a7e533B9594e4bb443aDB2df0ddE"
;!         }
;!       ],
;!       "expected": [
;!         "7437834752357434334343423343443375834785783474"
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
;!           "caller": "0xdeBa4D71e13b550Cdac11d55f4Dff4A95B826C81"
;!         }
;!       ],
;!       "expected": [
;!         "-7437834752357434334343423343443375834785783474"
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
;!           "caller": "0xe6c037F79b346ebC9D8c4d5e75FECBeB5b45ACFA"
;!         }
;!       ],
;!       "expected": [
;!         "15101022404869751666946096985411952473"
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
;!           "caller": "0x7C7BF9a8B6154Ba79ED77a4B8D704ae4146Fca51"
;!         }
;!       ],
;!       "expected": [
;!         "-15101022404869751666946096985411952474"
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
;!           "caller": "0xe204916bA4b5bBAC4B94968ae1AfB888F64AA7a8"
;!         }
;!       ],
;!       "expected": [
;!         "0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
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
;!           "caller": "0x3b74908f67ca744aa0AA092996468fEF9b9fc6C1"
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
  %res = call i256 @__smod(i256 noundef %arg1, i256 noundef %arg2)
  store i256 %res, ptr addrspace(1) null, align 4
  call void @llvm.evm.return(ptr addrspace(1) null, i256 32)
  unreachable
}

declare i256 @__smod(i256 %arg1, i256 %arg2) #0
declare void @llvm.evm.return(ptr addrspace(1), i256)
declare i256 @llvm.evm.calldataload(ptr addrspace(2))

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind readnone willreturn }
