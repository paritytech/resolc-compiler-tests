// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

/// @notice Benchmarking helper for USDC (FiatTokenProxy). Pre-funded in setup with tokens.
/// Each call exercises real USDC code paths through the proxy atomically in a single tx.
contract USDCBenchmark {
    address public proxy;

    constructor(address _proxy) {
        proxy = _proxy;
    }

    function transfer(address _to, uint256 _amount) external {
        (bool success,) = proxy.call(
            abi.encodeWithSignature("transfer(address,uint256)", _to, _amount)
        );
        require(success, "transfer failed");
    }

    function approve(address _spender, uint256 _amount) external {
        (bool success,) = proxy.call(
            abi.encodeWithSignature("approve(address,uint256)", _spender, _amount)
        );
        require(success, "approve failed");
    }

    function transferFrom(address _from, address _to, uint256 _amount) external {
        (bool success,) = proxy.call(
            abi.encodeWithSignature("transferFrom(address,address,uint256)", _from, _to, _amount)
        );
        require(success, "transferFrom failed");
    }
}
