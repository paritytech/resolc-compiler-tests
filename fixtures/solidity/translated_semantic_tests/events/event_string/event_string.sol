contract C {
    event E(string r);
    function deposit() public {
        emit E("HELLO WORLD");
    }
}