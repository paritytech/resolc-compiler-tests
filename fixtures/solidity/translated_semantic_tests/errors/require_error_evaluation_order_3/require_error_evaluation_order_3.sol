contract C {
    string failureMessage = "Failure Message";
    function g(bool x) internal returns (bool) {
        failureMessage = "Intercepted failure message";
        return x;
    }
    function h() internal returns (string memory) { return failureMessage; }
    function f(bool c) public {
        require(g(c), h());
    }
}