contract C {
    function f() public returns (bytes32) {
        return (blockhash)(block.number - 1);
    }
}