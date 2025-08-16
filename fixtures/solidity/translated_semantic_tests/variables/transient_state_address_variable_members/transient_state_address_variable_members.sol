contract C {
    address transient a;
    function f() public returns (address) {
        a = msg.sender;
        return a;
    }
    function g() public view returns (address) {
        return a;
    }
}