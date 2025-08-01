//! {
//!   "targets": [
//!     "evm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0xb72f0Ea44fC52d4F50678DBAB12AE38b3769BC21"
//!         }
//!       ],
//!       "expected": [
//!         "0xC5D2460186F7233C927E7DB2DCC703C0E500B653CA82273B7BFAD8045D85A470"
//!       ]
//!     },
//!     {
//!       "name": "zero_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0x3Ba5f9233AD4Cf384cff4f546bb572054D751270"
//!         }
//!       ],
//!       "expected": [
//!         "0xbc36789e7a1e281436464229828f817d6612f7b477d66591ff96a9e064bcc98a"
//!       ]
//!     },
//!     {
//!       "name": "zero_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "19"
//!           ],
//!           "caller": "0xdc6589B9229A893010bbf14881aDfAEC18936593"
//!         }
//!       ],
//!       "expected": [
//!         "0x5429fdc28e48579bde709c0ca18c55d58f14c9438d5cd1829556be99fd68b97b"
//!       ]
//!     },
//!     {
//!       "name": "zero_word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "32"
//!           ],
//!           "caller": "0xa6f0E4F0f3566EF44d38f820D8c3F145f80b13A1"
//!         }
//!       ],
//!       "expected": [
//!         "0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "2383"
//!           ],
//!           "caller": "0xDF8fE5E1C76bf5a05c867595953BC8426Dd87dBb"
//!         }
//!       ],
//!       "expected": [
//!         "0x2bf2abf2c4bdf72726403db1fbf139902a3226d549c0799e858f888ada5197ad"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xF100"
//!           ],
//!           "caller": "0x3fCAdff948A851d2C01608D5503579ca1f1F93cA"
//!         }
//!       ],
//!       "expected": [
//!         "0x97e787e44ffc5c4e49ed8a96c73c0109a7f4b0ce2a483815cdec45a7559dae35"
//!       ]
//!     },
//!     {
//!       "name": "zero_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xA1B2b01c09E8954769D08A5Db6408743e4Bf9B88"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "zero_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x608F090321BE1616b77Df101eb648041e08f75fb"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "zero_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0xd03c899d9872C13B9f81cf9A7992F53Bea18dEb7"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "zero_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x66C7a48c6Ad7239B698488536b91D1008F4334d0"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "zero_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x51cC94480A4DCc864b2E5650a5aDe2423410a172"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "zero_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0x100000000"
//!           ],
//!           "caller": "0xC448998203c54E0793375e66c938FA18Bb3628d9"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "zero_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0xffac882a21894FbD370Fc70124a90050EB7272Ec"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "zero_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x37334Ba085B98D764d7dA6c007f5b124FEe38422"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x1BfBe039Af61225f7Ce54c2e8E6Af477531376d7"
//!         }
//!       ],
//!       "expected": [
//!         "0xC5D2460186F7233C927E7DB2DCC703C0E500B653CA82273B7BFAD8045D85A470"
//!       ]
//!     },
//!     {
//!       "name": "one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0xFC4448F7e8e26A183BCbCD6B3A1363F14f9F2d74"
//!         }
//!       ],
//!       "expected": [
//!         "0xbc36789e7a1e281436464229828f817d6612f7b477d66591ff96a9e064bcc98a"
//!       ]
//!     },
//!     {
//!       "name": "one_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "19"
//!           ],
//!           "caller": "0x686Ee01fFF8D8BB7b9953F5002f9D5ebA7bA3159"
//!         }
//!       ],
//!       "expected": [
//!         "0x5429fdc28e48579bde709c0ca18c55d58f14c9438d5cd1829556be99fd68b97b"
//!       ]
//!     },
//!     {
//!       "name": "one_word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "32"
//!           ],
//!           "caller": "0x980af8865d0801027933A971Aa1624fd524AB629"
//!         }
//!       ],
//!       "expected": [
//!         "0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "2383"
//!           ],
//!           "caller": "0x1eC288aB65b81fBcE27b911EE88607dB2Cf12E67"
//!         }
//!       ],
//!       "expected": [
//!         "0x2bf2abf2c4bdf72726403db1fbf139902a3226d549c0799e858f888ada5197ad"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xF100"
//!           ],
//!           "caller": "0x46bBe4e291DF53A959C5616F9545Ec93b8233a0c"
//!         }
//!       ],
//!       "expected": [
//!         "0x97e787e44ffc5c4e49ed8a96c73c0109a7f4b0ce2a483815cdec45a7559dae35"
//!       ]
//!     },
//!     {
//!       "name": "one_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x45463d373761b838aFaA06B4FDc1194fF7B8eA47"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "one_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xEe2D7df7e0AE362e219b7b21Fc5dA63783eeF9D2"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "one_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0xcE7fdD23454B71ee587EB86D0A334A6ae255b999"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "one_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xad5D96e1a79403c878663987E72a241BdF1Ba064"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "one_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x3d0250E82328f489d732b7b44C14B217e390b2E8"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "one_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0x100000000"
//!           ],
//!           "caller": "0x216D5a6AbE9DEC09431Bcb3632fdAbA575Ec329c"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "one_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x08F3FA9c86491572837c16ad9a4046E498652cb5"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x8ce13DaFfBee0e24945c54e776cB8D2DCF460Bbe"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "small_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8",
//!             "0"
//!           ],
//!           "caller": "0xC569CDca3415E38F66973C673537214de40ed238"
//!         }
//!       ],
//!       "expected": [
//!         "0xC5D2460186F7233C927E7DB2DCC703C0E500B653CA82273B7BFAD8045D85A470"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8",
//!             "1"
//!           ],
//!           "caller": "0x82faffb59b34a646fc1feFA09Ec3368f056E540F"
//!         }
//!       ],
//!       "expected": [
//!         "0xbc36789e7a1e281436464229828f817d6612f7b477d66591ff96a9e064bcc98a"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8",
//!             "19"
//!           ],
//!           "caller": "0x47FA04Af2cA0EFeb64e89067EDA8F3Fd1DD0c9D4"
//!         }
//!       ],
//!       "expected": [
//!         "0x5429fdc28e48579bde709c0ca18c55d58f14c9438d5cd1829556be99fd68b97b"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8",
//!             "32"
//!           ],
//!           "caller": "0x9279caCB3Dcc01906D205EC311E9d0eabfcb2526"
//!         }
//!       ],
//!       "expected": [
//!         "0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8",
//!             "2383"
//!           ],
//!           "caller": "0x7565A3FE354915ECE3731b47D0443eb0bA259acC"
//!         }
//!       ],
//!       "expected": [
//!         "0x2bf2abf2c4bdf72726403db1fbf139902a3226d549c0799e858f888ada5197ad"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8",
//!             "0xF100"
//!           ],
//!           "caller": "0xb3539C5173d1a2BB2B189315c3f55DB53f2279Bd"
//!         }
//!       ],
//!       "expected": [
//!         "0x97e787e44ffc5c4e49ed8a96c73c0109a7f4b0ce2a483815cdec45a7559dae35"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x722a5d8F44bC7abC254809232B745a5Cd86fd0D7"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "small_ordinar_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x8097ec382c547402899fBa0c7011DC4315428D4A"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "small_ordinar_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x102AF924eC8D510c47373efa8EEacB6fA95fA7c0"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "small_ordinar_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x61B85626a4C77AB21904DC379a6AAf88f58C3D89"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "small_ordinar_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x33fcE9FB6F14238ba1CE5DE6213408267627fF70"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "small_ordinar_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8",
//!             "0x100000000"
//!           ],
//!           "caller": "0x3AAdb8146E2E1c288df4D78764Bc9F87DacE1ae9"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "small_ordinar_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x9ff01ce14AA6F0cFF637Fa9a7Fb93b4b01ceaCA7"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "small_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "8",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xC0d7eAd3f38d708452dAD5B5bBcF5DbaCe3bd8F9"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "word_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "0"
//!           ],
//!           "caller": "0xD527a8DA7C89911c2A84021222f2d723FB71d3E0"
//!         }
//!       ],
//!       "expected": [
//!         "0xC5D2460186F7233C927E7DB2DCC703C0E500B653CA82273B7BFAD8045D85A470"
//!       ]
//!     },
//!     {
//!       "name": "word_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "1"
//!           ],
//!           "caller": "0xd80C309E6A85ba60FdacB40B1c20d2C73382e5e2"
//!         }
//!       ],
//!       "expected": [
//!         "0xbc36789e7a1e281436464229828f817d6612f7b477d66591ff96a9e064bcc98a"
//!       ]
//!     },
//!     {
//!       "name": "word_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "19"
//!           ],
//!           "caller": "0x8497C91C3d619e1d377Cb673556a60dB521A9Bc1"
//!         }
//!       ],
//!       "expected": [
//!         "0x5429fdc28e48579bde709c0ca18c55d58f14c9438d5cd1829556be99fd68b97b"
//!       ]
//!     },
//!     {
//!       "name": "word_word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "32"
//!           ],
//!           "caller": "0x6773406a5C2aCA7De850715eaA5C12fADF762374"
//!         }
//!       ],
//!       "expected": [
//!         "0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563"
//!       ]
//!     },
//!     {
//!       "name": "word_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "2383"
//!           ],
//!           "caller": "0x44287DFD3D28F90c97e1C4643359F706810B6E0f"
//!         }
//!       ],
//!       "expected": [
//!         "0x2bf2abf2c4bdf72726403db1fbf139902a3226d549c0799e858f888ada5197ad"
//!       ]
//!     },
//!     {
//!       "name": "word_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "0xF100"
//!           ],
//!           "caller": "0x34bC1A6f1837472A3a04f4b83C93144D49ED9DE7"
//!         }
//!       ],
//!       "expected": [
//!         "0x97e787e44ffc5c4e49ed8a96c73c0109a7f4b0ce2a483815cdec45a7559dae35"
//!       ]
//!     },
//!     {
//!       "name": "word_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x187b748489623Ce66d1D9AeD2028F2af017dA9a4"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "word_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xa38fe88DC9e3A3003a7dc9903559013dfd5cE56E"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "word_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0xD0686234d01314F90e256975B16DfdB12E671A35"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "word_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xA99b4C26481Efd6D56f2Ef713eeC9E24ec1c7449"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "word_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0xbcd05ce407a4001Eb302d123A3eEf35e060bDb0c"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "word_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "0x100000000"
//!           ],
//!           "caller": "0x292d7e13Adf3Dee4E49C9dDE8498492b37561a4B"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "word_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0xC8aC56663906bfaA00E1E620782A443b6633ede7"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "word_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x4475971f9Ea7C39228C186EDe094D6F35854af5E"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383",
//!             "0"
//!           ],
//!           "caller": "0xafD881a405b67Df0eA4B2225f57A00cbfABEAfcB"
//!         }
//!       ],
//!       "expected": [
//!         "0xC5D2460186F7233C927E7DB2DCC703C0E500B653CA82273B7BFAD8045D85A470"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383",
//!             "1"
//!           ],
//!           "caller": "0x08f7338D57abD6eB751CFB41eB2d2228084CCeBA"
//!         }
//!       ],
//!       "expected": [
//!         "0xbc36789e7a1e281436464229828f817d6612f7b477d66591ff96a9e064bcc98a"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383",
//!             "19"
//!           ],
//!           "caller": "0x3c69bF087b66e5240E48914049D700673B07aA2b"
//!         }
//!       ],
//!       "expected": [
//!         "0x5429fdc28e48579bde709c0ca18c55d58f14c9438d5cd1829556be99fd68b97b"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383",
//!             "32"
//!           ],
//!           "caller": "0x66C67C5d3773a928EB722D39F670EfbB6a43bfBb"
//!         }
//!       ],
//!       "expected": [
//!         "0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383",
//!             "2383"
//!           ],
//!           "caller": "0x371AdD1dA20C71e1df713817C5f30D3eb78Ee66b"
//!         }
//!       ],
//!       "expected": [
//!         "0x2bf2abf2c4bdf72726403db1fbf139902a3226d549c0799e858f888ada5197ad"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383",
//!             "0xF100"
//!           ],
//!           "caller": "0xEA36519175Ff967c3969A565f9A2D9131Aff6055"
//!         }
//!       ],
//!       "expected": [
//!         "0x97e787e44ffc5c4e49ed8a96c73c0109a7f4b0ce2a483815cdec45a7559dae35"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x354CD781e688c6582a643215E9b2b40A11bb10cd"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x52337Ff39CC6846cc2eB8dA0EA4BD06D65566632"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0xE44e1c5e38880ccd5aB7736b848Ecad2707f3732"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x30120Bd676cf95d434373deB22442948F9319ace"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0xd2fbae2A0A8c95DaC561e28d2d08B7f686462377"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383",
//!             "0x100000000"
//!           ],
//!           "caller": "0xb37F4bf55540Fe2d8133f24366166c27EE6C88c3"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x9f5eB1222087A7F79811616B85c948F2B09078ce"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x328532f2D7dFEb726D827a94F81f2FB072E85a40"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_words_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100",
//!             "0"
//!           ],
//!           "caller": "0xb006f749CD099a974Ea270B75474Bd7E9972C814"
//!         }
//!       ],
//!       "expected": [
//!         "0xC5D2460186F7233C927E7DB2DCC703C0E500B653CA82273B7BFAD8045D85A470"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100",
//!             "1"
//!           ],
//!           "caller": "0xa7aEfbe1445932aFa7cBAAeb8efc198e4D6bC58c"
//!         }
//!       ],
//!       "expected": [
//!         "0xbc36789e7a1e281436464229828f817d6612f7b477d66591ff96a9e064bcc98a"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100",
//!             "19"
//!           ],
//!           "caller": "0xC2Ccff740337b9603338fEE9fEd0f66Fa8681530"
//!         }
//!       ],
//!       "expected": [
//!         "0x5429fdc28e48579bde709c0ca18c55d58f14c9438d5cd1829556be99fd68b97b"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100",
//!             "32"
//!           ],
//!           "caller": "0x18Be7440355a8eac08683006B7Fc1B258dFe3178"
//!         }
//!       ],
//!       "expected": [
//!         "0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100",
//!             "2383"
//!           ],
//!           "caller": "0x1A4E93A794B7C3c736F31CEd05f81cc29f83e2Be"
//!         }
//!       ],
//!       "expected": [
//!         "0x2bf2abf2c4bdf72726403db1fbf139902a3226d549c0799e858f888ada5197ad"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100",
//!             "0xF100"
//!           ],
//!           "caller": "0x0F26F5F57814789acfB183a3a34c28F227dcB47E"
//!         }
//!       ],
//!       "expected": [
//!         "0x97e787e44ffc5c4e49ed8a96c73c0109a7f4b0ce2a483815cdec45a7559dae35"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xAb31D377E94C1a5AC0Bd95D484c88F2c34495fb2"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_words_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x6a23FaD90Db943992E33005a3B91eaaD95Bc2145"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_words_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0xA2f93B9A1EC2209e44CC5C8C3e1B14cFa70b0c74"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_words_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xB6930D5817eDc101B1683316c805FcdB3F6680E7"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_words_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x044eA4a38DAbc4b3767c87410E17DfbD089E8b1e"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_words_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100",
//!             "0x100000000"
//!           ],
//!           "caller": "0xde798519f8c9F77F40E093d26393b9F8D9CaB56f"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_words_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x67039c4db6550830748BB1b532E20568732a4fB5"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_words_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xe9D65ff631Bcf22b7aC8c3e7D11718d69433b87F"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "big_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0"
//!           ],
//!           "caller": "0x9fCb91CE9c6deE26a06505a18C8eE4373C8E0011"
//!         }
//!       ],
//!       "expected": [
//!         "0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470"
//!       ]
//!     },
//!     {
//!       "name": "big_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "1"
//!           ],
//!           "caller": "0x7A8550855eC567267423925b9B2AfEeaC25F98Ca"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "big_ordinar_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "19"
//!           ],
//!           "caller": "0xee557B2fCdCc0cF55f439C41a12002F5Ea99CC20"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "big_ordinar_word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "32"
//!           ],
//!           "caller": "0x6fE663F93308F38Aa2cbD451B16837EF04e8bE9C"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "big_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "2383"
//!           ],
//!           "caller": "0x089ceb32d726f4E7F9F2616583b664b79669a205"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "big_ordinar_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xF100"
//!           ],
//!           "caller": "0x5EdBd06661BB4DDA96b11Ba1cF2206FD146fCF23"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "big_ordinar_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xcFD1F4079c51cE8DBEB6EB0be6227ca0cedb71ec"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "big_ordinar_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x70095DAFf2d1B7b93d33e62f3bC244D292d61Dd0"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "big_ordinar_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x42E1aee2a43e5430c76dA3504AB07613E4DD161f"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "big_ordinar_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xbd5B4e61c41CDba38Ea2E2F9350aB2384E42BD28"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "big_ordinar_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x350d85679774A1f794F5F57105aBb2120D88D8Db"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "big_ordinar_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0x100000000"
//!           ],
//!           "caller": "0xE85389b27Fe631135D8Ad05675665d5514B0b9fF"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "big_ordinar_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x57eB084E376Cc2c34033778311Cba20673BF0fe9"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "big_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFAA",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x1821a120058cd4c2BAC51F8B1CDc9e5352802320"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_32_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0"
//!           ],
//!           "caller": "0xc4D73A38CBeDAdd69f0d50b5B354554a413f643E"
//!         }
//!       ],
//!       "expected": [
//!         "0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_32_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "1"
//!           ],
//!           "caller": "0x016fDC4Dd4C8aDBB496D9Add6257C82b6fb9964c"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_32_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "19"
//!           ],
//!           "caller": "0x6bB23293CbD1AE6259ADc11E263C795Aeb741833"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_32_word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "32"
//!           ],
//!           "caller": "0xFdaea13a33A0B086D7186dc4A9E5ab50a839b5E6"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_32_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "2383"
//!           ],
//!           "caller": "0x8239668A4420ac80D5f4E52e1446644bb492519C"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_32_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xF100"
//!           ],
//!           "caller": "0xF9180c20843bE8f422921B7690F209ce5bD39b45"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_32_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xd3101A924B819AaAD8251465F31291D29B51297D"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_32_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x486042Ca8c9C059e74CEEEA2C14169e38425D8A2"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_32_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0xbe939c165829381Aa5BE462EAF46610eb38FE06c"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_32_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xc267e5A8a40472Ef7A0c1965ec9cFcf816beAf15"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_32_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x241dcd35472742aE99a309A264C3F07416673951"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_32_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0x100000000"
//!           ],
//!           "caller": "0x4Da300a913dB414d502a6C9e9b13Cb3208763aBb"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_32_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0xFAee7De4b49c0B9631C2407343B8dAb962222b08"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_32_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE0",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xFeF9EDDC21862972708207F2279e90F6953F6fA3"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_31_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0"
//!           ],
//!           "caller": "0x2ff6feb663B7d683F1D2706cA5BE42651f01F221"
//!         }
//!       ],
//!       "expected": [
//!         "0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_31_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "1"
//!           ],
//!           "caller": "0x9afA21638A5Df43c3119eDBd16448D0Bc1CEE446"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_31_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "19"
//!           ],
//!           "caller": "0x4eAF24550070119d3573f32C4d79Cf4546e04525"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_31_word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "32"
//!           ],
//!           "caller": "0x32bf6c75f561A14dfb46D81be752Fdd15E4A3611"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_31_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "2383"
//!           ],
//!           "caller": "0xB6beB7e8B55F486843147286239178812Ebd8D45"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_31_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xF100"
//!           ],
//!           "caller": "0x85bC5b37Fb0EA70446C405c756582ee2Dc2A61a4"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_31_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xDC8189C9EfB25d61c40F492b308330ef6f455268"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_31_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x14f336036b2EBb1b49cCA0021b73138937f6Ae03"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_31_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x50F2cA9640A9051e9AE240e166d593D01843231F"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_31_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xaC7f4F8234413F74eeba837E662294eCa0Bdf051"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_31_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x4B8f7897044F8a77841c1d1e9f09551e53d2F4Ee"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_31_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0x100000000"
//!           ],
//!           "caller": "0x2Ceeca7A694E544358E9aB8dD89E0aB20fD4c5Cd"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_31_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x1de5C8B9995A819cE91137977A87e7cb3BcA5057"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_31_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFE1",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x10eBEbCE58dB9052e03E464A1d255F270d24570c"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0"
//!           ],
//!           "caller": "0xa9c06a3Ad8EFF7A5f76aEa23D0Ca7fDC0A4e6E91"
//!         }
//!       ],
//!       "expected": [
//!         "0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "1"
//!           ],
//!           "caller": "0xF7f701307F389A19632D78a11E8D4c226357dE05"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "19"
//!           ],
//!           "caller": "0xde25eb7bfB1877570e5a9A79AD483c1451debBE4"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "32"
//!           ],
//!           "caller": "0x99cf7C518566e0ff6E549f959eAF67A6c227aE04"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "2383"
//!           ],
//!           "caller": "0x661DE0172b0296af3652039dB8ed79697e404b52"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xF100"
//!           ],
//!           "caller": "0x4359bee2b97b9A8dBAe79569D608b4F0a8560fD9"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xd9Aeb3153da433Fe19561AD780c35957df49C315"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x20F8F21EC2a0371b4c2b20E937ed7D63d1E0D3d8"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0xC93E45FA0400B7b4e0e94DCbFcB768af0E4a51b4"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0xaF17a71a1A836683e2737679444029200981d327"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0xc0404ff6DdA2095922bD69cE2d46DBe28Eff724d"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0x100000000"
//!           ],
//!           "caller": "0xd99C1B025Ca7974097b765a9f5deC749089402E0"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x3b8327f678F19AB48027dA963e773D286F79b6e9"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFEF",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x50132732e5722Ed99d34D355d2358AC505958b25"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0"
//!           ],
//!           "caller": "0x92F5bbB70e152037a7ebDBd29A4B7Ba836428AA6"
//!         }
//!       ],
//!       "expected": [
//!         "0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_minus_one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "1"
//!           ],
//!           "caller": "0x6FE266333Ad7Fee7b3825a2Fa11e858c4268d5b3"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_one_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "19"
//!           ],
//!           "caller": "0x99726457c35328827224BCeB36b1112e5bcFeB4b"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_one_word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "32"
//!           ],
//!           "caller": "0x6e5703Fa37551507B47d03665367ba0935d03c3f"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "2383"
//!           ],
//!           "caller": "0x8b3Ee6F8A854b4da379c0045A2acda5C65f85111"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_one_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xF100"
//!           ],
//!           "caller": "0x094E6131fdc6801532dC775163B91f9b4D1956f0"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_one_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0xBa6a89B055E508bf6bE0F5bB0B2DfC7eC2Bc751E"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_one_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xFb77a268FdE7D76D1A0E97433044e357572E76C1"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_one_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x39aeA207DFBAc5F63e50ac3E73fbb10f55790CfB"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_one_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x7f095F14ECE7eAECce60F77fC73f2218dF6aBc25"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_one_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x0F26D34b8d5AedB41142CAA66398C634034DeE77"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_one_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0x100000000"
//!           ],
//!           "caller": "0x2D702C3C22F04fdBE19bfaC44bCDEd38B5EBa2bb"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_one_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0xc2e40818DC520018588e01c538AB33186bc22362"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_minus_one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFF",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0xCE79433cFf74fa036fa782Bc13d49c8FC9276542"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x100000000",
//!             "0"
//!           ],
//!           "caller": "0x2eaa1A5847194019D32006c93Bc43c36407C96b6"
//!         }
//!       ],
//!       "expected": [
//!         "0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470"
//!       ]
//!     },
//!     {
//!       "name": "2_in_32_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x100000000",
//!             "1"
//!           ],
//!           "caller": "0x5776489baDB62ad45AAFD7E2b820B7A641845610"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x100000000",
//!             "19"
//!           ],
//!           "caller": "0xBa25907Fe45331353848a0C8528F0683Bec44d2d"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x100000000",
//!             "32"
//!           ],
//!           "caller": "0x07E2855Af648791F0233f0c9749D2B1AA03A1D00"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x100000000",
//!             "2383"
//!           ],
//!           "caller": "0x5D23eBc7647478869fd30111BFBccC2Df2e4A711"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x100000000",
//!             "0xF100"
//!           ],
//!           "caller": "0xf602264eB4f1CBb62864748c1B658706B4e60d5A"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x21E32f76f050cd39eAfB491FEB815b34181E90AD"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0xd26C77d4Cb2B094C753e1d3441B5930c79fc9aEb"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0xe53854858c6140C6E38dFe61B959B89a19bF940c"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x04e469202b478eC7D26FA2b72d0504AD878d21eD"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0xB8D2Ef70D8306Cf4093c873bB97E7881AAD172Da"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x100000000",
//!             "0x100000000"
//!           ],
//!           "caller": "0x05d431CE61888849Ab035f1586b2f7832c652056"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x100000000",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x54C28568aF207fd4205F7d1dc1e6FAEc362D29b0"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "2_in_32_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x100000000",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x8fB3c8b42d9d80c6b0765ca682b470891DEe0adE"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0"
//!           ],
//!           "caller": "0x55297C255E8529f049747C4945C8b56A8d64B27d"
//!         }
//!       ],
//!       "expected": [
//!         "0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "1"
//!           ],
//!           "caller": "0x7AaBc7915DF92a85E199DbB4B1D21E637e1a90A2"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "19"
//!           ],
//!           "caller": "0x5947e451B4a44efaE0d33008DA3b1021e40f8236"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "32"
//!           ],
//!           "caller": "0x738cd323e5fFAea0c034228e5Ae659B123720217"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "2383"
//!           ],
//!           "caller": "0x2D1c0EC04cC6358477f27B73A3EE38FDa07f0A1a"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xF100"
//!           ],
//!           "caller": "0xd4c199CdFa64DfB1f1975dB0864E344A7940bEC7"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x97f5f1Fb9bC741Fec1cF8186CB9674cf0E2eBBBF"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x397dB53fF22440Aea430356daA621E180d5FdA4c"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x658aAD7c5B9acF41E43C74882e3cAe8f4Ab8a8E3"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x45641A154c321BdF41c5546664b9f3a1E12eD5e8"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x081AF7D826847d0059E71a6942074B3C94b8Fc63"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0x100000000"
//!           ],
//!           "caller": "0xF8218b9548f450312153994D3081D47DdED01C74"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x8180A5FD846842FFb026D866b5858cc8F7c2cd29"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_32_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3334353453452342342354355544445321191012012",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x7a1278ad06532088076ce47a044E18262F093b78"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "max_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0"
//!           ],
//!           "caller": "0x31DA3D7B9F5A342444E228AE6a6967fDB9e9FC0d"
//!         }
//!       ],
//!       "expected": [
//!         "0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470"
//!       ]
//!     },
//!     {
//!       "name": "max_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "1"
//!           ],
//!           "caller": "0x95F54Aa351c48baA93b62fA609568aC9B4e4586B"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "max_small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "19"
//!           ],
//!           "caller": "0x20751D6f851ef8373238A1ad7A5A61a2aff5f64c"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "max_word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "32"
//!           ],
//!           "caller": "0x085437fa4469e7d18D884f7f9C1790Af07DAFaEe"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "2383"
//!           ],
//!           "caller": "0xa44B1CFAB6E9FaA1bEa2F6CAAdcE30284284AeEb"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "max_ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xF100"
//!           ],
//!           "caller": "0x20d4bA0014Aaf543A8c8B8D9504c2Fbd60C7f67C"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "max_big_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFAA"
//!           ],
//!           "caller": "0x8326823E154ad7e3c6ccDee0d798C64df70bA6f6"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "max_2_in_32_minus_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFE0"
//!           ],
//!           "caller": "0x014afbEfccdf96bf12933e74dede7E0FFEBB185f"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "max_2_in_32_minus_31",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFE1"
//!           ],
//!           "caller": "0x01B24Ef876B6bE6c3217f923DEc1CC54426CAd94"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "max_2_in_32_minus_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFEF"
//!           ],
//!           "caller": "0x10bc9D2f3FE7C86A0Df32f42243FFA3be9718420"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "max_2_in_32_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFFF"
//!           ],
//!           "caller": "0x70Dd654F8FaC8981352D160633e02aC69C11626D"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "max_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0x100000000"
//!           ],
//!           "caller": "0x9b017595cF43B28FB8E9ae33BEb383b89D0876E0"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "max_ordinar_bigger_2_in_32",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "3334353453452342342354355544445321191012012"
//!           ],
//!           "caller": "0x8C8dd98521c253f378Dd6624cB308A1C84D02F71"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x791EA92e03a0850E929fB3301f03Ad707DABE659"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     },
//!     {
//!       "name": "one_value_one_len",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x6C8Dbd9996aC0394872c75701D434FD31eC759A7"
//!         }
//!       ],
//!       "expected": [
//!         "0x5fe7f977e71dba2ea1a68e21057beebb9be2ac30c6410aa38d4f3fbe41dcffd2"
//!       ]
//!     },
//!     {
//!       "name": "one_value_small_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "123122",
//!             "19",
//!             "1"
//!           ],
//!           "caller": "0xf8F505Fbcc8596c7506fAA03A4F44a2c4B22128A"
//!         }
//!       ],
//!       "expected": [
//!         "0x3440fccadf57f3e851b64746c6699fd48cd89b0f6315eb296f40a802dd94bd9f"
//!       ]
//!     },
//!     {
//!       "name": "one_value_word_len",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "12",
//!             "32",
//!             "1"
//!           ],
//!           "caller": "0x991E5e73AED0Ed9928b4D58d4058a1352664385d"
//!         }
//!       ],
//!       "expected": [
//!         "0xcebc8882fecbec7fb80d2cf4b312bec018884c2d66667c67a90508214bd8bafc"
//!       ]
//!     },
//!     {
//!       "name": "one_value_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "1024",
//!             "2383",
//!             "1"
//!           ],
//!           "caller": "0x107C61679c9cb397a925D232b1a9DD95aE4C6880"
//!         }
//!       ],
//!       "expected": [
//!         "0x2d336300c2d440badd7f3ca35724de42b9dd3f27886f24c82707fc165443bf72"
//!       ]
//!     },
//!     {
//!       "name": "one_value_ordinar_words_len",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "1",
//!             "0xF100",
//!             "1"
//!           ],
//!           "caller": "0xDB1571c71A2B9abBB2aF7853899A3A2642Cb0F52"
//!         }
//!       ],
//!       "expected": [
//!         "0x0f0a838eda887c623e495a21f05680ce7b4aab5289ece5279ca2d0845ef39976"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_one_len",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "0xA1"
//!           ],
//!           "caller": "0x3F1E51E87715a7633C1d24CAA4041C11B3fE159B"
//!         }
//!       ],
//!       "expected": [
//!         "0x55811889317195718ae63d8cf8bb3fbaaee3fe82c3fd4a59b81c0838c65aaffc"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_small_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "123122",
//!             "19",
//!             "0x44"
//!           ],
//!           "caller": "0x52eB659aF41DC143a01a4e51bC76053A35A33d1D"
//!         }
//!       ],
//!       "expected": [
//!         "0xbf5889d879b503719ba152fbc614736f694853de501c054b5d42b1b42b05db3c"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_word_len",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "12",
//!             "32",
//!             "0xE6"
//!           ],
//!           "caller": "0xf93dfDAE5C70b57c949437eB86Ba9f1Bb8828e81"
//!         }
//!       ],
//!       "expected": [
//!         "0x9ae9a199fa732b9802610c8489c8061a98cf89162cee5f065c68d4599493a8db"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "1024",
//!             "2383",
//!             "0xD5"
//!           ],
//!           "caller": "0xdc34AEa6015B5D5BD7a75B1407be546B25092116"
//!         }
//!       ],
//!       "expected": [
//!         "0x1d50aa894dae67e1ef784cd70304bba12e65302d4ee899da2182a40fe3469227"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_value_ordinar_words_len",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "1",
//!             "0xF100",
//!             "0x82"
//!           ],
//!           "caller": "0x53F74867a40831D4489e67F267fBb1419E4383f0"
//!         }
//!       ],
//!       "expected": [
//!         "0xb6afdc52eefaade537b79528e57bc71c4effe94bc0c4691230526e89fe6a1efe"
//!       ]
//!     },
//!     {
//!       "name": "max_value_one_len",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "0xFF"
//!           ],
//!           "caller": "0xD72D676869986ed8a44536AA1715cEBba769f505"
//!         }
//!       ],
//!       "expected": [
//!         "0x8b1a944cf13a9a1c08facb2c9e98623ef3254d2ddb48113885c3e8e97fec8db9"
//!       ]
//!     },
//!     {
//!       "name": "max_value_small_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "123122",
//!             "19",
//!             "0xFF"
//!           ],
//!           "caller": "0x25192490594E71B7cf63c200Aa6BcEC28E5122F0"
//!         }
//!       ],
//!       "expected": [
//!         "0x79c391d2922f0eb7113d1dce8b9c92c3bb8bdc97a99da02785987da10d0966fa"
//!       ]
//!     },
//!     {
//!       "name": "max_value_word_len",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "12",
//!             "32",
//!             "0xFF"
//!           ],
//!           "caller": "0xE9572C04D8396Ea88d5Fe949Fed3534C2C188024"
//!         }
//!       ],
//!       "expected": [
//!         "0xa9c584056064687e149968cbab758a3376d22aedc6a55823d1b3ecbee81b8fb9"
//!       ]
//!     },
//!     {
//!       "name": "max_value_ordinar_len",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "1024",
//!             "2383",
//!             "0xFF"
//!           ],
//!           "caller": "0x5AfF7fbD7E80BdE2e035087357Eb5DD992DfbcA6"
//!         }
//!       ],
//!       "expected": [
//!         "0x464ee0fd3c58ff23b466742990170576f949f92b5f249999e7d12dafd2d4d4da"
//!       ]
//!     },
//!     {
//!       "name": "max_value_ordinar_words_len",
//!       "inputs": [
//!         {
//!           "method": "with_value",
//!           "calldata": [
//!             "1",
//!             "0xF100",
//!             "0xFF"
//!           ],
//!           "caller": "0xeAc69B8Ca7Ab9e86816b3Fb8F014309b6A5bF521"
//!         }
//!       ],
//!       "expected": [
//!         "0xcecdf9a84d468f045f350c314d8a4f336e802911e24bce87c51b778e93d10b4c"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 offset, uint256 len) external pure returns(uint256 result) {
        assembly {
            // nullify memory ptr slot
            mstore(0x40, 0)
            result := keccak256(offset, len)
        }
    }

    function with_value(uint256 offset, uint256 len, uint8 val) external pure returns(uint256) {
        assembly {
            for { let i := 0 } lt(i, len) { i := add(i, 1) }
            {
                mstore8(add(offset, i), val)
            }
            // manually return as memory pointer can be overwritten
            mstore(0, keccak256(offset, len))
            return(0, 32)
        }
    }
}
