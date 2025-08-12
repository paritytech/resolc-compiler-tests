contract C {
    modifier add(uint16 a, uint16 b) {
        unchecked { a + b; }
        _;
    }
    function f(uint16 a, uint16 b, uint16 c) public add(a, b) returns (uint16) {
        return b + c;
    }
}