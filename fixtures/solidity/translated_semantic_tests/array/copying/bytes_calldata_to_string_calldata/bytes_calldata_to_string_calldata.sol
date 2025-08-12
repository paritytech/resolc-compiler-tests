contract C {
    function f(bytes calldata c) public returns (string calldata s) {
        return string(c);
    }
}