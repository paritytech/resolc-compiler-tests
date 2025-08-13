contract C {
    function f() public view returns (uint) {
        return block.prevrandao;
    }
}

// ====
// ignore: true
// comment: Ignored since it's using constants
// EVMVersion: >=paris
// ----
// f() -> 2500000000000000
