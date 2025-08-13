contract C {
    function f() public returns (uint) {
        return block.gaslimit;
    }
}
// ====
// ignore: true
// comment: Constant gas limit used, we do not support variables.
// ----
// f() -> 0x40000000
// f() -> 0x40000000
// f() -> 0x40000000
