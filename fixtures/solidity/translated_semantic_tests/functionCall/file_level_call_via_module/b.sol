import "a.sol" as M;
contract C {
    function f() public pure returns (uint, uint) {
        return (M.f(2), M.f("abc"));
    }
}