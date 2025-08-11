contract C {
    function f() public returns (address) {
        return tx.origin;
    }
}