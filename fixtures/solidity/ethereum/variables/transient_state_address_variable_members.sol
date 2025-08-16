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
// ====
// EVMVersion: >=cancun
// ----
// constructor() ->
// gas legacy: 59027
// gas legacy code: 70400
// account: 0 -> 0x3212121212121212121212121212120000000012
// f() -> 0x3212121212121212121212121212120000000012
// g() -> 0
