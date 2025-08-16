contract C {
    function f() public returns (bool) {
        // Random address, no contract deployed to it.
        (bool success, ) = address(0xffff).call("");
        return success;
    }
}
// ====
// comment: In the EVM this returns `true` if the address has no code so their test is probably incorrect.
// ----
// f() -> true
