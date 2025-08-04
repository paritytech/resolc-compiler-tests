//! {
//!   "cases": [
//!     {
//!       "name": "bitcoin",
//!       "inputs": [
//!         {
//!           "method": "bitcoin",
//!           "calldata": [],
//!           "caller": "0xaE333A2E6c29628F1A57712e8d28ac1d9BE0397a"
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
//!           "caller": "0xe04a661187bb261446B07167D8d0dfc3cc4a2775"
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
//!           "caller": "0xAd0e5789628aFba63B35353a547c11c8BdD13577"
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
//!           "caller": "0xc39C24DE74Eb052E7Bdf13de64Ae2001cca2e2a7"
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