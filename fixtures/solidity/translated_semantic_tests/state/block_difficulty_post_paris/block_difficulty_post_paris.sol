contract C {
    function f() public returns (uint) {
        return block.difficulty;
    }
}