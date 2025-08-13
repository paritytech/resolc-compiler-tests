contract C {
    function f() public returns (uint) {
        return block.chainid;
    }
}
// ====
// EVMVersion: >=istanbul
// ----
// f() -> 0x420420420
// f() -> 0x420420420
// f() -> 0x420420420
