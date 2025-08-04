//! {
//!   "cases": [
//!     {
//!       "name": "zero_zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0xe1C62A24Bc90516e0A5d0A458540025E5739242a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x14669131A51689060bc22252C5aBF2Bcbf3B2938"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x212eFEf7048bd30BE944CBDdd594585b27b6b152"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x0a2603bc6ceD941Ef9f8c84154aA3F3e645DB07e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "433478394034343",
//!             "0"
//!           ],
//!           "caller": "0x482903bA3f1afE21c8D298cA37B50a008871229a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "121563127839120",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x238755566664f42DF0c8ec9F2f08D28cA9e6bB8E"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "433478394034343",
//!             "0"
//!           ],
//!           "caller": "0x68e09460129ae4853b5E43c1f72c571D0EDf97E0"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "121563127839120",
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0xf33faCe61530C2B4A04d2B101d76E34304AdeBd1"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "451167890987656789",
//!             "3456789009876545678",
//!             "0"
//!           ],
//!           "caller": "0x1A1B7Be2E4a0619fcBd4aAEf63AFFD5B58c6aC6D"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_max_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xfafffffffffffffffffffffffffffffffffffffffffffffffffffffff4ffffff",
//!             "0x050000000000000000000000000000000000000000000000000000000b000000",
//!             "0"
//!           ],
//!           "caller": "0xf1a8Fa866b431D5F6Df093d142B2CD07bdA20c02"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_min_overflow_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xab000000000000000000000000000000000000000000000000000000000000a1",
//!             "0x54ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5f",
//!             "0"
//!           ],
//!           "caller": "0xF7C7d4b3Dc666599E6B14133ed3Ab072A454E54c"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_overflow_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x2fff1ffffffffff5ffffff0fffffffff2ffffffafffafffcffff1ff234ffffff",
//!             "0xef231ffffffffff4f12fff34ffffffff2fffffbbfffafffdffff22f538ffffff",
//!             "0"
//!           ],
//!           "caller": "0x1b2B89CdA38Ee3DC32989E7583388E5bec7b298d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_max_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0"
//!           ],
//!           "caller": "0xDDD09abA3dCbb0c7a0f0343f0eD2315FA748C1e3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x6C043Ce51790Fc236E6497dCC7a3AbC15FF97adB"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_max_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0"
//!           ],
//!           "caller": "0xAAdB7976860B4fECF995D679A253CD315fAf87f9"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x9Cd36085F5c6700a07287F4e3b946594250bF05A"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7437834752357434334343423343443375834785783474",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0"
//!           ],
//!           "caller": "0x108A4aD76E22E56a2d97abADAf2b27d018EA02E5"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "23784273472384723848213821342323233223",
//!             "0"
//!           ],
//!           "caller": "0x10231D0aE9848f4baad84BfB12cB2b0dEF4658c8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_max_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0"
//!           ],
//!           "caller": "0x3D200301fd64E890aee080F5Aa632bac183de5Db"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_zero_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0xD7a753C081Df01704b528E4a6F1a53607d144090"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0xE17F8EBce401aba9Bb6a48fa897cd3399ebbf04E"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_zero_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0x3b4899BE402CA723F772f59AB8101D488Ea9865f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x085dc2E0016bdA6D7E474edcDE4B4B7ebE45d5aA"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "433478394034343",
//!             "1"
//!           ],
//!           "caller": "0x160cec2760d5B9a6703De98A8e26a1F657019281"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_zero_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "121563127839120",
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0xB975e0b96cC169B31c5a63A116A97dFD6c3E3e8D"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "433478394034343",
//!             "1"
//!           ],
//!           "caller": "0xe871b8377FC262fEa147c49c6c42e4BaAe4C3B8b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "121563127839120",
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x0D3604eD2dceeC8C8F59B58d8D411da04175Cd6B"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "two_zero_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2",
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0x3eCF45488ad77beD2109B4fCE17562361a149Fb6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "451167890987656789",
//!             "3456789009876545678",
//!             "1"
//!           ],
//!           "caller": "0xcb256901b8A6Cd64deC60A58E6450EF72121Fb22"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_max_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xfafffffffffffffffffffffffffffffffffffffffffffffffffffffff4ffffff",
//!             "0x050000000000000000000000000000000000000000000000000000000b000000",
//!             "1"
//!           ],
//!           "caller": "0x22aaBB81851c03ED73945872083905490338FA84"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_min_overflow_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xab000000000000000000000000000000000000000000000000000000000000a1",
//!             "0x54ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5f",
//!             "1"
//!           ],
//!           "caller": "0x6e9643eEE283573611d798Ea974fe6433E784086"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_overflow_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x2fff1ffffffffff5ffffff0fffffffff2ffffffafffafffcffff1ff234ffffff",
//!             "0xef231ffffffffff4f12fff34ffffffff2fffffbbfffafffdffff22f538ffffff",
//!             "1"
//!           ],
//!           "caller": "0x0143E0C43D998608B48631A000E8Ea1F469F3722"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_max_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1"
//!           ],
//!           "caller": "0x496100524d1b42d4167f34A11641FEb6c5732060"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_zero_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0xf1F925003Cbe7592664917e8C6Ef96145CB7D865"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_max_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1"
//!           ],
//!           "caller": "0xc88Dae90BA8610D475F1715441c5C6CF98340ccc"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x961014Fbe219afd30Ccce0f445Be59aeCF7b77Aa"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7437834752357434334343423343443375834785783474",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1"
//!           ],
//!           "caller": "0xa6c7C763231FBb7E66f4f712e7EaaB5F86251334"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "23784273472384723848213821342323233223",
//!             "1"
//!           ],
//!           "caller": "0x6e34B50781Df8941a4091b3368a727E13272B2a2"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_max_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1"
//!           ],
//!           "caller": "0x29C2Bc9cfC3E6064d3C961ed1D016a300B79E7EE"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_zero_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x19C1003D2D194A74dbBF3eCb52075e57dF06Cada"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x0358d3Dd42DE3418080D5b3f3eAC31c6c2963F8D"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "one_zero_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xa792B0C4e9E342244d57A0E98A753c5875Cb2878"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "one_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x6cBF3899F832016ad9B5850441df5C71bb75b302"
//!         }
//!       ],
//!       "expected": [
//!         "2"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "385347583459430234923842734623542325264782394023482374625423",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x642E162369548ea7E0245f157563AbC561a21Ca8"
//!         }
//!       ],
//!       "expected": [
//!         "3806109516113667800853767386706858816392394866986028175"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_zero_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "43873543534623235553423423423949234923947324723387478233",
//!             "0",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xf25c73116bc761FeaC01938e11D0bd93EDf584f5"
//!         }
//!       ],
//!       "expected": [
//!         "3464170909841972837815004710006741383053238982131669865"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "8939384548956875984554349903434903490994494993020959",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xB1B6A453586C45925f15f9408E878EFB9BdbFE50"
//!         }
//!       ],
//!       "expected": [
//!         "8939384548956875984554349903434903490994494993020960"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "54367829174652819374654281934765281937468197465281947562815652819",
//!             "1",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x916aE887f5CB87d2b803B96665dCe8Bb53ff9BBf"
//!         }
//!       ],
//!       "expected": [
//!         "1122390563298694939482039005289855975809195069546337164"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8934583485834958423984923948923489238948923232849429834",
//!             "5743892143323342342342342342343234234234234233423432423",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x0255711E578074979C58bd579D7967eee2489d50"
//!         }
//!       ],
//!       "expected": [
//!         "1208684754231213194457793386619225626218462219187592801"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_ordinar_to_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "67345763475734785873485834858348958348582848238423848",
//!             "47076922298769071715669669331407893506027850516560019248",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x8381c65807d7516812Ad4d327BC270dd54D28a90"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_sum_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2627823478238423324723748234889489238948234823848237723",
//!             "4107071959225120461210988217434259684534112799694397006",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xBAec6C2ea89cA0579537cC8E6f9794f2954A17E6"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_sum",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "78534387453485348583489583489583495834858934985982398",
//!             "6656361050010058437351246868834165427647488688556652330",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xC45d6e12382c1A7661C947Dd8e4173a6798C5E37"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_sum_plus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2745764578678457867485678478567845576875845678454554545",
//!             "3989130858785085918449057973755903346606501945088080182",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x4C1CB9C470d04B36CFd283C43FbE807855B6f4C9"
//!         }
//!       ],
//!       "expected": [
//!         "6734895437463543785934736452323748923482347623542634727"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_ordinar_bigger_sum",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "4567890987654678923042342342342342234534234",
//!             "34234234322332342356457567897665235",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x087646c3068d90C83Adb8C105f532D49575F40f8"
//!         }
//!       ],
//!       "expected": [
//!         "4567891021888913245374684698799910132199469"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xfafffffffffffffffffffffffffffffffffffffffffffffffffffffff4ffffff",
//!             "0x050000000000000000000000000000000000000000000000000000000b000000",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x93117A4108f5f87735e0C4EB87e81e34c83d49EB"
//!         }
//!       ],
//!       "expected": [
//!         "5205817307728658054337357463547686623259643155181961175"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_min_overflow_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xab000000000000000000000000000000000000000000000000000000000000a1",
//!             "0x54ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5f",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xC8aDEEC75c5101B1818C8EbE9c86d1aEA50F75A9"
//!         }
//!       ],
//!       "expected": [
//!         "5205817307728658054337357463547686623259643155181961176"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_overflow_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x2fff1ffffffffff5ffffff0fffffffff2ffffffafffafffcffff1ff234ffffff",
//!             "0xef231ffffffffff4f12fff34ffffffff2fffffbbfffafffdffff22f538ffffff",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x0ff7201450BAaE8555fDd50bCEfa31Ed16e3eE19"
//!         }
//!       ],
//!       "expected": [
//!         "143268280533798984280626563216701884452898533151473998"
//!       ]
//!     },
//!     {
//!       "name": "zero_max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xDdC8c2ADA23bD4eFD31298601D12A24C7c0C3363"
//!         }
//!       ],
//!       "expected": [
//!         "5205817307728658054337357463547686623259643155181961175"
//!       ]
//!     },
//!     {
//!       "name": "max_zero_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x7BaBb9F9B8870B108B3B3Cf097865C71415E5560"
//!         }
//!       ],
//!       "expected": [
//!         "5205817307728658054337357463547686623259643155181961175"
//!       ]
//!     },
//!     {
//!       "name": "one_max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xDE85EC3532d2759154eA1D35eb70850CA3123cB7"
//!         }
//!       ],
//!       "expected": [
//!         "5205817307728658054337357463547686623259643155181961176"
//!       ]
//!     },
//!     {
//!       "name": "max_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x32F9E4922d1A0F128475406EbF71816D352Cb19B"
//!         }
//!       ],
//!       "expected": [
//!         "5205817307728658054337357463547686623259643155181961176"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7437834752357434334343423342323233245234534443443375834785783474",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xde54a02c212df68aaf6de048A2857A0331c0fc78"
//!         }
//!       ],
//!       "expected": [
//!         "4785420515141501473933080503501442490599789180695732857"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "23784273472384723848213821342323233223",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0x8B2534d8988db95b8b972B8e9A981f3ea4b68b4d"
//!         }
//!       ],
//!       "expected": [
//!         "5205817307728658078121630935932410471473464497505194398"
//!       ]
//!     },
//!     {
//!       "name": "max_max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "6734895437463543785934736452323748923482347623542634728"
//!           ],
//!           "caller": "0xBedB8387F33F1781eAc8f05c9040EAEf212C6923"
//!         }
//!       ],
//!       "expected": [
//!         "3676739177993772322739978474771624323036938686821287622"
//!       ]
//!     },
//!     {
//!       "name": "zero_zero_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xf38f0099F2ec285DAcBB53Fbf9d45A62188761f9"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xD330Da660185A0c3A61850f9D85FEEF7a6BB8331"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "one_zero_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xffFD5ec115A39a60b5beE18934b76859C878Eb0A"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "one_one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x0cF53113f8FCB2d3135BE56cb0F58ccB38446a5E"
//!         }
//!       ],
//!       "expected": [
//!         "2"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "385347583459430234923842734623542325264782394023482374625423",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xf064F1Db7A59C4197d2Ae5bDb32F171FFE6EF27C"
//!         }
//!       ],
//!       "expected": [
//!         "385347583459430234923842734623542325264782394023482374625423"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_zero_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "43873543534623235553423423423949234923947324723387478233",
//!             "0",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x7b8A4B1B57299CA7FE7909d9c3452C04F68D8acc"
//!         }
//!       ],
//!       "expected": [
//!         "43873543534623235553423423423949234923947324723387478233"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "8939384548956875984554349903434903490994494993020959",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x4918359D24445e2BF5d1c39d243038978be0f8bc"
//!         }
//!       ],
//!       "expected": [
//!         "8939384548956875984554349903434903490994494993020960"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "54367829174652819374654281934765281937468197465281947562815652819",
//!             "1",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xdB927fB60917eC9da7fbC920a8fcd657326c7e45"
//!         }
//!       ],
//!       "expected": [
//!         "54367829174652819374654281934765281937468197465281947562815652820"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8934583485834958423984923948923489238948923232849429834",
//!             "5743892143323342342342342342343234234234234233423432423",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xe60A18E6cBE158a5d6437b32e7162e961A1918cf"
//!         }
//!       ],
//!       "expected": [
//!         "14678475629158300766327266291266723473183157466272862257"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_max_minus_one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "67345763475737323342423423423423432232333434485834858348958348582848238423848",
//!             "48446325761578872081147561585264475620936550179805705690499235425064891216086",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x3433a871d691B77830f77a54b7Ba3887F6F37c51"
//!         }
//!       ],
//!       "expected": [
//!         "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2627823478238423324723748234889489238948234823848237723",
//!             "115792089237316195423568357185209669429945260917405674550218635773089281402212",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xF619a04EC36C6219672bf31caA84F66d6936Eed6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_min_overflow_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xab000000000000000000000000000000000000000000000000000000000000a1",
//!             "0x54ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5f",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x39e80d54dC7eBfD1314A72d9518bb94f9B98284f"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_overflow_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x2fff1ffffffffff5ffffff0fffffffff2ffffffafffafffcffff1ff234ffffff",
//!             "0xef231ffffffffff4f12fff34ffffffff2fffffbbfffafffdffff22f538ffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x36248cba0B479038649F01c0412D7296A15abd36"
//!         }
//!       ],
//!       "expected": [
//!         "14082212818049917570678938371545509262648545780014710136968537875118318157823"
//!       ]
//!     },
//!     {
//!       "name": "zero_max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xffE4D41f4e3036C4A4039299cEB7eDB4da46Aa92"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_zero_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xe552FA89B0608BE3c9e458493070541Ce35F9f2F"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xd839ae599281f09f246049355C34235A5133CC81"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "max_one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x6Cc075106c828d20b01d12d2d486836FD7777117"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7437834752357434334343423342323233245234534443443375834785783474",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x1e31aC7B7144Ef509Ee9de0b5bcbD02FC975a33A"
//!         }
//!       ],
//!       "expected": [
//!         "7437834752357434334343423342323233245234534443443375834785783474"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "23784273472384723848213821342323233223",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x67a8276B9BE9a9EA4a7b0eD946BF13eCC41B0508"
//!         }
//!       ],
//!       "expected": [
//!         "23784273472384723848213821342323233223"
//!       ]
//!     },
//!     {
//!       "name": "max_max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xaBd391D195c423f925E62dE0E0DA1f669BAD61C6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 a, uint256 b, uint256 c) external pure returns(uint256 result) {
        assembly {
            result := addmod(a, b, c)
        }
    }
}
