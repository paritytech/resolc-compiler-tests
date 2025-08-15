contract C {
    function f() public returns (bytes32) {
        return blockhash(0);
    }

    function g() public returns (bytes32) {
        return blockhash(1);
    }

    function h() public returns (bytes32) {
        return blockhash(2);
    }
}
// ====
// compileToEwasm: also
// ignore: true
// comment: Assumes a constant block hash which is not the case for us
// ----
// f() -> 0x3737373737373737373737373737373737373737373737373737373737373737
// g() -> 0x3737373737373737373737373737373737373737373737373737373737373738
// h() -> 0
