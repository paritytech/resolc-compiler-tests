contract C {
    constructor() {}

    function f() public returns (uint) {
        return block.timestamp;
    }
}
// ====
// ignore: true
// comment: block timestamp is not a constant
// ----
// constructor()
// f() -> 0xdeadbeef
// f() -> 0xdeadbeef
