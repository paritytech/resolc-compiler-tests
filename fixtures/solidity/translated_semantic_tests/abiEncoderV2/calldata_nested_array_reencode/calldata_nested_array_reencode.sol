pragma abicoder v2;
contract C {
    function f(uint[][] calldata a) public returns (bytes memory) {
        return abi.encode(a);
    }
    function g(uint8[][][] calldata a) public returns (bytes memory) {
        return abi.encode(a);
    }
    function h(uint16[][2][] calldata a) public returns (bytes memory) {
        return abi.encode(a);
    }
    function i(uint16[][][1] calldata a) public returns (bytes memory) {
        return abi.encode(a);
    }
    function j(uint16[2][][] calldata a) public returns (bytes memory) {
        return abi.encode(a);
    }
}