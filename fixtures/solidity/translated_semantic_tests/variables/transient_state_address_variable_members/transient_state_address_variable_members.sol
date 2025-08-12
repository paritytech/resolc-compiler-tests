contract C {
    address transient a;
    function f() public returns (uint) {
        a = msg.sender;
        return a.balance;
    }
    function g() public returns (uint) {
        return a.balance;
    }
}