contract C {
    function f() public returns (bytes4) {
        return msg.sig;
    }
    function g() public returns (bytes4) {
        return msg.sig;
    }
}