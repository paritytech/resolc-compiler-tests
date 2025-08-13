contract C {
    function f() public returns (address) {
        return tx.origin;
    }
}

// ====
// ignore: true
// comment: Ignored since it's using constants
// ----
// f() -> 0x9292929292929292929292929292929292929292
// f() -> 0x9292929292929292929292929292929292929292
// f() -> 0x9292929292929292929292929292929292929292
