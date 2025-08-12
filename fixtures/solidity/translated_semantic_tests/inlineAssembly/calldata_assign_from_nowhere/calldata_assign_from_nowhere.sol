contract C {
    function f() public pure returns (bytes calldata x) {
        assembly { x.offset := 0 x.length := 4 }
    }
}