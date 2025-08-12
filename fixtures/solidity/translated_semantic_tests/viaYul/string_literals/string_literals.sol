contract C {
    function short_dyn() public pure returns (string memory x) {
        x = "abc";
    }
    function long_dyn() public pure returns (string memory x) {
        x = "12345678901234567890123456789012345678901234567890123456789012345678901234567890";
    }
    function short_bytes_dyn() public pure returns (bytes memory x) {
        x = "abc";
    }
    function long_bytes_dyn() public pure returns (bytes memory x) {
        x = "12345678901234567890123456789012345678901234567890123456789012345678901234567890";
    }
    function bytesNN() public pure returns (bytes3 x) {
        x = "abc";
    }
    function bytesNN_padded() public pure returns (bytes4 x) {
        x = "abc";
    }
}