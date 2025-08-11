contract C {
    function f(string calldata s) public returns (bytes calldata m) {
        return bytes(s);
    }
}