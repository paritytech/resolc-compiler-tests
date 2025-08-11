contract C {
    function f() public returns (address) {
        return msg.sender;
    }
}