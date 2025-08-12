library L {
    function f(uint256 v) external returns (uint256) { return v*v; }
}
contract C {
    function g(uint256 v) external returns (uint256) {
        return L.f(v);
    }
}