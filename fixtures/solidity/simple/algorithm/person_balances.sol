//! {
//!   "cases": [
//!     {
//!       "name": "bitcoin",
//!       "inputs": [
//!         {
//!           "method": "bitcoin",
//!           "calldata": [],
//!           "caller": "0x612aCe7f921b046a3F58d041f0d6182f702cD263"
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
//!           "caller": "0xa71f5B0FdEA6fe7054834664bf4409d1eBd45f19"
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
//!           "caller": "0xb9863bE1270e0B1ff5Dd2582FC90683A1c1cDA8F"
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
//!           "caller": "0xfdAC902507492c4490a7024f8e4D4F9317588E15"
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