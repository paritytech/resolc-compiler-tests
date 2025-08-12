contract C {
    function f(bytes memory a, bytes memory b, bytes memory c) public returns (bytes memory) {
        return bytes.concat(a, b, c);
    }
}