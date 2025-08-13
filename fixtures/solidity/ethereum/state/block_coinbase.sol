contract C {
    function f() public returns (address payable) {
        return block.coinbase;
    }
}

// ====
// ignore: true
// comment: Ignored since it's using constants
// ----
// f() -> 0x0000000000000000000000000000000000008001
// f() -> 0x0000000000000000000000000000000000008001
// f() -> 0x0000000000000000000000000000000000008001
