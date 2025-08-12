pragma abicoder               v2;
contract C {
    function gggg(bool x) external pure returns (bool) {
        return x;
    }
    function f(uint256 a) external view returns (bool) {
        bool x = false;
        assembly { x := a }
        return this.gggg(x);
    }
}