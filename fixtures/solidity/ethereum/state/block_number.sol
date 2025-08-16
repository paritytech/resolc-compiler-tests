contract C {
    constructor() {}

    function f() public returns (uint) {
        return block.number;
    }
}
// ====
// ignore: true
// comment: block number is not a constant
// ----
// constructor()
// f() -> 2
// f() -> 2
