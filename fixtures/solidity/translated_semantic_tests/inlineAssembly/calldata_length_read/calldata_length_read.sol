contract C {
    function lenBytesRead(bytes calldata x) public returns (uint l) {
        assembly { l := x.length }
    }
    function lenStringRead(string calldata x) public returns (uint l) {
        assembly { l := x.length }
    }
}