contract C {
    function f() public returns (uint) {
        return block.chainid;
    }
}
// ====
// EVMVersion: >=istanbul
// ----
// f() -> 420420420
// f() -> 420420420
// f() -> 420420420
