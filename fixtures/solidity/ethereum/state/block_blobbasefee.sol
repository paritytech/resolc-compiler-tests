contract C {
    function f() public view returns (uint) {
        return block.blobbasefee;
    }

    function g() public view returns (uint ret) {
        assembly {
            ret := blobbasefee()
        }
    }
}
// ====
// EVMVersion: >=cancun
// ignore: true
// comment: Ignored since pallet-revive doesn't support blobs
// ----
// f() -> 1
// g() -> 1
// f() -> 1
// g() -> 1
