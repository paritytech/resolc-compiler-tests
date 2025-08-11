contract C {
    function f(string memory a, string memory b, string memory c) public returns (string memory) {
        return string.concat(string.concat(a, b), c);
    }
}