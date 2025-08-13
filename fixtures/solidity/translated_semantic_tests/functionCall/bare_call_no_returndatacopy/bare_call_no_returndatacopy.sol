contract C {
    function f() public returns (bool) {
        // Random address, no contract deployed to it.
        (bool success, bytes memory out) = address(0xffff).call("");
        return !(success && out.length != 0);
    }
}