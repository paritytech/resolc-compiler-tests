contract C {
    function f() public returns (uint) {
        return block.difficulty;
    }
}
// ====
// EVMVersion: >=paris
// ignore: true
// comment: block difficulty is not a constant
// ----
// f() -> 2500000000000000
// f() -> 2500000000000000
// f() -> 2500000000000000
