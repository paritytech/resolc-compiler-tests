contract C {
    function g(bool b) public pure returns (uint x) {
        require(b);
        return 13;
    }
    function f(bool flag) public view returns (uint x) {
        try this.g(flag) returns (uint a) {
            x = a;
        } catch {
            x = 9;
        }
    }
}