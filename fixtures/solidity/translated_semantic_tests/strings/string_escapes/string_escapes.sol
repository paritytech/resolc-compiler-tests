contract test {
    function f() public pure returns (bytes32) {
        bytes32 escapeCharacters = "\t\n\r\'\"\\";
        return escapeCharacters;
    }
}