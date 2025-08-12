contract C {
    uint immutable u;
    bool immutable b;
    address immutable a;
    function get() public returns (uint, bool, address) {
        return (u, b, a);
    }
}