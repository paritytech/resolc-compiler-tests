library L {
    function add(bytes2 a, bytes2 b) internal pure returns (bytes2) {
        return bytes2(uint16(a) + uint16(b));
    }
}
contract C {
    using L for bytes2;
    function sum(bytes2 a, bytes2 b) public returns (bytes2) {
        return a.add(b);
    }
}