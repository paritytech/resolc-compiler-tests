contract C {
    function f(bytes memory a, bytes memory b) public returns (bytes memory) {
        return bytes.concat(a, b);
    }
}