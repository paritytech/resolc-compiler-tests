pragma abicoder v1;
contract C {
    function f(bool _b) public returns (uint256) {
        if (_b) return 1;
        else return 0;
    }
    function g(bool _in) public returns (bool _out) {
        _out = _in;
    }
}