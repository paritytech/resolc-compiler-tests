//! {
//!   "cases": [
//!     {
//!       "name": "bitcoin",
//!       "inputs": [
//!         {
//!           "method": "bitcoin",
//!           "calldata": [],
//!           "caller": "0xed593d0da1121b395a26e6cff970ca108facc92b"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ethereum",
//!       "inputs": [
//!         {
//!           "method": "ethereum",
//!           "calldata": [],
//!           "caller": "0xbb658f72c38e450d48cd8686631f43a057f6fb57"
//!         }
//!       ],
//!       "expected": [
//!         "10"
//!       ]
//!     },
//!     {
//!       "name": "litecoin",
//!       "inputs": [
//!         {
//!           "method": "litecoin",
//!           "calldata": [],
//!           "caller": "0x0bc344176dffb0e71d316c749e06184dbb2d0cda"
//!         }
//!       ],
//!       "expected": [
//!         "50"
//!       ]
//!     },
//!     {
//!       "name": "zcash",
//!       "inputs": [
//!         {
//!           "method": "zcash",
//!           "calldata": [],
//!           "caller": "0x73ced187f1dbfbee9b23dbbf8ed1e7e6b4f66bff"
//!         }
//!       ],
//!       "expected": [
//!         "100"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.19;

contract Test {
    enum Month {
        January,
        February,
        March,
        April,
        May,
        June,
        July,
        August,
        September,
        October,
        November,
        December
    }

    struct Date {
        uint16 year;
        Month month;
        uint8 day;
    }

    enum TokenId {
        Bitcoin,
        Ethereum,
        Litecoin,
        Zcash
    }

    uint8 constant TOKENS_COUNT = 4;

    struct Balance {
        TokenId tokenId;
        uint256 balance;
    }

    struct Person {
        uint256 id;
        Date dateOfBirth;
        Balance[TOKENS_COUNT] balances;
    }

    struct Result {
        uint256 id;
        uint256 sum;
        Date dateOfBirth;
    }

    function bitcoin() public pure returns(uint64) {
        return uint64(main(TokenId.Bitcoin).sum);
    }

    function ethereum() public pure returns(uint64) {
        return uint64(main(TokenId.Ethereum).sum);
    }

    function litecoin() public pure returns(uint64) {
        return uint64(main(TokenId.Litecoin).sum);
    }

    function zcash() public pure returns(uint64) {
        return uint64(main(TokenId.Zcash).sum);
    }

    function main(TokenId tokenId) private pure returns(Result memory) {
        Person memory person = Person({
            id: 42,
            dateOfBirth: Date({
                year: 1994,
                month: Month.March,
                day: 16
            }),
            balances: [
                Balance(TokenId.Bitcoin, 1),
                Balance(TokenId.Ethereum, 10),
                Balance(TokenId.Litecoin, 50),
                Balance(TokenId.Zcash, 100)
            ]
        });

        Result memory result = Result(person.id, 0, person.dateOfBirth);

        for(uint8 id = 0; id < TOKENS_COUNT; id++) {
            if (person.balances[id].tokenId == tokenId) {
                result.sum += person.balances[id].balance;
            }
        }
        return result;
    }
}