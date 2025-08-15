contract C {
    function blockhash(uint256 blockNumber) public returns (bytes32) {
        bytes32 x;
        return x;
    }

    function f() public returns (bytes32) {
        return blockhash(3);
    }
}
// ====
// ignore: true
// comment: We're running on a full blockchain so the above might not be zero.
// ----
// f() -> 0
