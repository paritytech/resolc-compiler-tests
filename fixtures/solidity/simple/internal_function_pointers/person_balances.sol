//! {
//!   "modes": [
//!     "Y",
//!     "E"
//!   ],
//!   "cases": [
//!     {
//!       "name": "bitcoin",
//!       "inputs": [
//!         {
//!           "method": "bitcoin",
//!           "calldata": [],
//!           "caller": "0xa51c1718597b143bc700ffcb7a529af94f4c5f47"
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
//!           "caller": "0xaee72b993fd22613eb6d60f4dd5c148a1e88163f"
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
//!           "caller": "0x20dc891e8e455e269d088c074b73f77439399efd"
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
//!           "caller": "0x93bb3defa5c60301c84a8f2298554af13be6b8e3"
//!         }
//!       ],
//!       "expected": [
//!         "100"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

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

    function mainRecursive(uint8 id, Person memory person, Result memory result, TokenId tokenId) private pure returns(Result memory) {
        if (id >= TOKENS_COUNT) {
            return result;
        }
        if (person.balances[id].tokenId == tokenId) {
            result.sum += person.balances[id].balance;
        }
        return mainRecursive(id + 1, person, result, tokenId);
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

        return mainRecursive(0, person, result, tokenId);
    }
}