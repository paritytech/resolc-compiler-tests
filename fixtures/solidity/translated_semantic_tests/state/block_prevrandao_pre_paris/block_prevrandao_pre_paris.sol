contract C {
    function f() public view returns (uint) {
        return block.prevrandao;
    }
}