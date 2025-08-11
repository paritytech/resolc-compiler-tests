contract C {
    function add(uint16 a, uint16 b) public returns (uint16) {
        return a + b;
    }
    function f(uint16 a, uint16 b, uint16 c) public returns (uint16) {
        unchecked { return add(a, b) + c; }
    }
}