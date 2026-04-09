// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "./multicall3.sol";

interface IERC20 {
    function balanceOf(address) external view returns (uint256);
    function totalSupply() external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
}

interface IWETH is IERC20 {
    function deposit() external payable;
}

/// @notice Benchmarking helper for Multicall3.
/// Batches calls across multiple contracts (WETH, TetherToken, USDC proxy)
/// through Multicall3's aggregate functions.
/// Pre-funded with all tokens in setup.
contract Multicall3Benchmark {
    Multicall3 public multicall;
    address public weth;
    address public tether;
    address public usdc; // FiatTokenProxy address

    constructor(address _multicall, address _weth, address _tether, address _usdc) {
        multicall = Multicall3(_multicall);
        weth = _weth;
        tether = _tether;
        usdc = _usdc;
    }

    /// @notice Benchmark aggregate() — queries balances across all tokens for a given account.
    /// Exercises: multicall dispatch, 3 external calls, return data aggregation.
    function benchAggregateBalances(address account) external returns (bytes[] memory) {
        Multicall3.Call[] memory calls = new Multicall3.Call[](3);
        calls[0] = Multicall3.Call({
            target: weth,
            callData: abi.encodeWithSelector(IERC20.balanceOf.selector, account)
        });
        calls[1] = Multicall3.Call({
            target: tether,
            callData: abi.encodeWithSelector(IERC20.balanceOf.selector, account)
        });
        calls[2] = Multicall3.Call({
            target: usdc,
            callData: abi.encodeWithSelector(IERC20.balanceOf.selector, account)
        });
        (, bytes[] memory results) = multicall.aggregate(calls);
        return results;
    }

    /// @notice Benchmark aggregate3() — transfers across multiple tokens + balance reads.
    /// Exercises: multicall dispatch, allowFailure, writes to 3 contracts, reads after writes.
    function benchAggregate3MultiToken(
        address recipient,
        uint256 wethAmount,
        uint256 tetherAmount,
        uint256 usdcAmount
    ) external returns (Multicall3.Result[] memory) {
        Multicall3.Call3[] memory calls = new Multicall3.Call3[](6);

        // Transfer WETH
        calls[0] = Multicall3.Call3({
            target: weth,
            allowFailure: false,
            callData: abi.encodeWithSelector(IERC20.transfer.selector, recipient, wethAmount)
        });
        // Transfer Tether
        calls[1] = Multicall3.Call3({
            target: tether,
            allowFailure: false,
            callData: abi.encodeWithSelector(IERC20.transfer.selector, recipient, tetherAmount)
        });
        // Transfer USDC
        calls[2] = Multicall3.Call3({
            target: usdc,
            allowFailure: false,
            callData: abi.encodeWithSelector(IERC20.transfer.selector, recipient, usdcAmount)
        });
        // Read WETH balance
        calls[3] = Multicall3.Call3({
            target: weth,
            allowFailure: false,
            callData: abi.encodeWithSelector(IERC20.balanceOf.selector, address(this))
        });
        // Read Tether balance
        calls[4] = Multicall3.Call3({
            target: tether,
            allowFailure: false,
            callData: abi.encodeWithSelector(IERC20.balanceOf.selector, address(this))
        });
        // Read USDC balance
        calls[5] = Multicall3.Call3({
            target: usdc,
            allowFailure: false,
            callData: abi.encodeWithSelector(IERC20.balanceOf.selector, address(this))
        });

        return multicall.aggregate3(calls);
    }

    /// @notice Benchmark tryAggregate() — transfers + reads with failure tolerance.
    /// Exercises: multicall dispatch, partial failure handling, cross-contract calls.
    function benchTryAggregateMultiToken(
        address recipient,
        uint256 wethAmount,
        uint256 tetherAmount,
        uint256 usdcAmount
    ) external returns (Multicall3.Result[] memory) {
        Multicall3.Call[] memory calls = new Multicall3.Call[](6);

        calls[0] = Multicall3.Call({
            target: weth,
            callData: abi.encodeWithSelector(IERC20.transfer.selector, recipient, wethAmount)
        });
        calls[1] = Multicall3.Call({
            target: tether,
            callData: abi.encodeWithSelector(IERC20.transfer.selector, recipient, tetherAmount)
        });
        calls[2] = Multicall3.Call({
            target: usdc,
            callData: abi.encodeWithSelector(IERC20.transfer.selector, recipient, usdcAmount)
        });
        calls[3] = Multicall3.Call({
            target: weth,
            callData: abi.encodeWithSelector(IERC20.totalSupply.selector)
        });
        calls[4] = Multicall3.Call({
            target: tether,
            callData: abi.encodeWithSelector(IERC20.totalSupply.selector)
        });
        calls[5] = Multicall3.Call({
            target: usdc,
            callData: abi.encodeWithSelector(IERC20.totalSupply.selector)
        });

        return multicall.tryAggregate(false, calls);
    }
}
