contract C {
    constructor() {}
    function f() public returns (uint) {
        return block.number;
    }
}