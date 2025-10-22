//! {
//!   "cases": [
//!     {
//!       "name": "test",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0xd41c057fd1c78805aac12b0a94a405c0461a6fbb"
//!         }
//!       ],
//!       "expected": [
//!         "0x58a83397571b0d9870872c4d00f5afa6430b9e161a4c5e3dec46b32657fca065"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.1;

contract Test {
    function f() public returns (bytes32 res) {
        return
            keccak256(
                abi.encode(
                    keccak256(
                        abi.encode(
                            keccak256(
                                abi.encode(
                                    keccak256(
                                        abi.encode(
                                            keccak256(
                                                abi.encode(
                                                    keccak256(
                                                        abi.encode(
                                                            keccak256(
                                                                abi.encode(
                                                                    keccak256(
                                                                        abi
                                                                            .encode(
                                                                                keccak256(
                                                                                    abi
                                                                                        .encode(
                                                                                            keccak256(
                                                                                                abi
                                                                                                    .encode(
                                                                                                        keccak256(
                                                                                                            abi
                                                                                                                .encode(
                                                                                                                    keccak256(
                                                                                                                        abi
                                                                                                                            .encode(
                                                                                                                                keccak256(
                                                                                                                                    abi
                                                                                                                                        .encode(
                                                                                                                                            keccak256(
                                                                                                                                                abi
                                                                                                                                                    .encode(
                                                                                                                                                        keccak256(
                                                                                                                                                            abi
                                                                                                                                                                .encode(
                                                                                                                                                                    keccak256(
                                                                                                                                                                        abi
                                                                                                                                                                            .encode(
                                                                                                                                                                                keccak256(
                                                                                                                                                                                    abi
                                                                                                                                                                                        .encode(
                                                                                                                                                                                            keccak256(
                                                                                                                                                                                                abi
                                                                                                                                                                                                    .encode(
                                                                                                                                                                                                        keccak256(
                                                                                                                                                                                                            abi
                                                                                                                                                                                                                .encode(
                                                                                                                                                                                                                    keccak256(
                                                                                                                                                                                                                        abi
                                                                                                                                                                                                                            .encode(
                                                                                                                                                                                                                                keccak256(
                                                                                                                                                                                                                                    abi
                                                                                                                                                                                                                                        .encode(
                                                                                                                                                                                                                                            keccak256(
                                                                                                                                                                                                                                                abi
                                                                                                                                                                                                                                                    .encode(
                                                                                                                                                                                                                                                        keccak256(
                                                                                                                                                                                                                                                            abi
                                                                                                                                                                                                                                                                .encode(
                                                                                                                                                                                                                                                                    keccak256(
                                                                                                                                                                                                                                                                        abi
                                                                                                                                                                                                                                                                            .encode(
                                                                                                                                                                                                                                                                                keccak256(
                                                                                                                                                                                                                                                                                    abi
                                                                                                                                                                                                                                                                                        .encode(
                                                                                                                                                                                                                                                                                            keccak256(
                                                                                                                                                                                                                                                                                                abi
                                                                                                                                                                                                                                                                                                    .encode(
                                                                                                                                                                                                                                                                                                        keccak256(
                                                                                                                                                                                                                                                                                                            abi
                                                                                                                                                                                                                                                                                                                .encode(
                                                                                                                                                                                                                                                                                                                    keccak256(
                                                                                                                                                                                                                                                                                                                        abi
                                                                                                                                                                                                                                                                                                                            .encode(
                                                                                                                                                                                                                                                                                                                                keccak256(
                                                                                                                                                                                                                                                                                                                                    abi
                                                                                                                                                                                                                                                                                                                                        .encode(
                                                                                                                                                                                                                                                                                                                                            keccak256(
                                                                                                                                                                                                                                                                                                                                                ""
                                                                                                                                                                                                                                                                                                                                            )
                                                                                                                                                                                                                                                                                                                                        )
                                                                                                                                                                                                                                                                                                                                )
                                                                                                                                                                                                                                                                                                                            )
                                                                                                                                                                                                                                                                                                                    )
                                                                                                                                                                                                                                                                                                                )
                                                                                                                                                                                                                                                                                                        )
                                                                                                                                                                                                                                                                                                    )
                                                                                                                                                                                                                                                                                            )
                                                                                                                                                                                                                                                                                        )
                                                                                                                                                                                                                                                                                )
                                                                                                                                                                                                                                                                            )
                                                                                                                                                                                                                                                                    )
                                                                                                                                                                                                                                                                )
                                                                                                                                                                                                                                                        )
                                                                                                                                                                                                                                                    )
                                                                                                                                                                                                                                            )
                                                                                                                                                                                                                                        )
                                                                                                                                                                                                                                )
                                                                                                                                                                                                                            )
                                                                                                                                                                                                                    )
                                                                                                                                                                                                                )
                                                                                                                                                                                                        )
                                                                                                                                                                                                    )
                                                                                                                                                                                            )
                                                                                                                                                                                        )
                                                                                                                                                                                )
                                                                                                                                                                            )
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                        )
                                                                                                                                                    )
                                                                                                                                            )
                                                                                                                                        )
                                                                                                                                )
                                                                                                                            )
                                                                                                                    )
                                                                                                                )
                                                                                                        )
                                                                                                    )
                                                                                            )
                                                                                        )
                                                                                )
                                                                            )
                                                                    )
                                                                )
                                                            )
                                                        )
                                                    )
                                                )
                                            )
                                        )
                                    )
                                )
                            )
                        )
                    )
                )
            );
    }
}
