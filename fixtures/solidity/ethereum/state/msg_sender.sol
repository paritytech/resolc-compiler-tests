contract C {
    function f() public returns (address) {
        return msg.sender;
    }
}
// ----
// account: 0 -> 0x1212121212121212121212121212120000000012
// f() -> 0x1212121212121212121212121212120000000012
