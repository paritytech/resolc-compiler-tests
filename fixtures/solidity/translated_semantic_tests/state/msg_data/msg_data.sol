contract C {
    function f() public returns (bytes calldata) {
        return msg.data;
    }
    function g(uint,bool) public returns (bytes calldata) {
        return msg.data;
    }
}