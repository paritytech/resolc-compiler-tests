pragma abicoder v1;
contract C {
    function f1() public returns (bytes memory) {
        return abi.encode("");
    }
    function f2(string calldata msg) public returns (bytes memory) {
        return abi.encode(msg);
    }
    function g1() public returns (bytes memory) {
        return abi.encodePacked("");
    }
    function g2(string calldata msg) public returns (bytes memory) {
        return abi.encodePacked(msg);
    }
    function h1() public returns (bytes memory) {
        return abi.encodeWithSelector(0x00000001, "");
    }
    function h2(string calldata msg) public returns (bytes memory) {
        return abi.encodeWithSelector(0x00000001, msg);
    }
}