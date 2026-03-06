// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IRelay.sol";

contract Relay00 is IRelay {
    uint256 public constant UNIQUE_ID = 0;
    uint256 public counter;
    address public next;

    function setNext(address next_) external override { next = next_; }

    function relay() external override returns (uint256) {
        counter += 1;
        return counter + UNIQUE_ID;
    }
}
