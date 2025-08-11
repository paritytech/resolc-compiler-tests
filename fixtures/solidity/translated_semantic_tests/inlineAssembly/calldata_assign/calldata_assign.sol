contract C {
    function f(bytes calldata x) public returns (bytes memory) {
        assembly { x.offset := 1 x.length := 3 }
        return x;
    }
}