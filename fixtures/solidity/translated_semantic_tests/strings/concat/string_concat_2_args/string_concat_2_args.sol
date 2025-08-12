contract C {
    function f(string memory a, string memory b) public returns (string memory) {
        return string.concat(a, b);
    }
}