contract C {
    function oneByteUTF8() public pure returns (string memory) {
        return "aaa\u0024aaa"; // usdollar
    }
    function twoBytesUTF8() public pure returns (string memory) {
        return "aaa\u00A2aaa"; // cent
    }
    function threeBytesUTF8() public pure returns (string memory) {
        return "aaa\u20ACaaa"; // euro
    }
    function combined() public pure returns (string memory) {
        return "\u0024\u00A2\u20AC";
    }
}