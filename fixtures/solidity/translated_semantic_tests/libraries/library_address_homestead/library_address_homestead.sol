library L {
    function f(uint256 a, uint256 b) external {
        assert(a * a == b);
    }
}
contract C {
    function addr() public view returns (bool) {
        return address(L) == address(0);
    }
    function g(uint256 a, uint256 b) public returns (bool) {
        (bool success,) = address(L).delegatecall(abi.encodeWithSignature("f(uint256,uint256)", a, b));
        return success;
    }
}