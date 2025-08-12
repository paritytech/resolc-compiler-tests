contract C {
    function f() public pure returns (string memory) {
        return unicode"😃, 😭, and 😈";
    }
    function g() public pure returns (string memory) {
        return unicode"😃, 😭,\
 and 😈";
    }
}