contract C {
    function add(uint16 a, uint16 b) public returns (uint16) {
        unchecked {
            return a + b;
        }
    }
    function f(uint16 a) public returns (uint16) {
        return add(a, 0x100) + 0x100;
    }
}