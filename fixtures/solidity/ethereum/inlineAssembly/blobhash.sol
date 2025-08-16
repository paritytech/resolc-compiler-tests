contract C {
    function f() public view returns (bytes32 ret) {
        assembly {
            ret := blobhash(0)
        }
    }
}
// ====
// EVMVersion: >=cancun
// ignore: true
// comment: We do not add any blobs to our transactions and therefore this test fails.
// ----
// f() -> 0x0100000000000000000000000000000000000000000000000000000000000001
