// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IRelay {
    function relay() external returns (uint256);
    function setNext(address next_) external;
}
