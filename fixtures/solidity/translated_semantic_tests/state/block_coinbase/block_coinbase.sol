contract C {
    function f() public returns (address payable) {
        return block.coinbase;
    }
}