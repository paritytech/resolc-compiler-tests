contract C {
    function f(bytes calldata data)
        external
        pure
        returns (uint256, bytes memory r)
    {
        return abi.decode(data, (uint256, bytes));
    }
}