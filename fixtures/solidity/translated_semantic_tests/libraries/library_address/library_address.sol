library L {
    function f(uint256 v) external pure returns (uint) {
        return v * v;
    }
    function g(uint256 v) external returns (uint) {
        return v * v;
    }
}
contract C {
    function addr() public view returns (bool) {
        return address(L) == address(0);
    }
    function g(uint256 v) public view returns (uint256) {
        return L.f(v);
    }
    function h(uint256 v) public returns (uint256) {
        (bool success, bytes memory result) = address(L).delegatecall(abi.encodeWithSignature("f(uint256)", v));
        assert(success);
        return abi.decode(result, (uint256));
    }
    function i(uint256 v) public returns (uint256) {
        (bool success, bytes memory result) = address(L).call(abi.encodeWithSignature("f(uint256)", v));
        assert(success);
        return abi.decode(result, (uint256));
    }
    function j(uint256 v) public returns (uint256) {
        (bool success, bytes memory result) = address(L).delegatecall(abi.encodeWithSignature("g(uint256)", v));
        assert(success);
        return abi.decode(result, (uint256));
    }
    function k(uint256 v) public returns (uint256) {
        (bool success, bytes memory result) = address(L).call(abi.encodeWithSignature("g(uint256)", v));
        assert(success);
        return abi.decode(result, (uint256));
    }
}