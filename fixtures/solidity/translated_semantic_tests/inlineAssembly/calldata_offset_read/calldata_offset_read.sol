contract C {
    function f(bytes calldata x) public returns (uint r) {
        assembly { r := x.offset }
    }
    function f(uint, bytes calldata x, uint) public returns (uint r, uint v) {
        assembly {
            r := x.offset
            v := x.length
        }
    }
}