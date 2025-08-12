import "./a.sol" as M;
contract C {
    uint public x;
    modifier m { x = 1; _; }
    function f() public M.M.C.m returns (uint t, uint r) {
        t = x;
        x = 3;
        r = 9;
    }
    function g() public m returns (uint t, uint r) {
        t = x;
        x = 4;
        r = 10;
    }
}