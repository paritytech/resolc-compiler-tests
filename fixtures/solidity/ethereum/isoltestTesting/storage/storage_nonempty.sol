contract StorageNotEmpty {
    uint256 x;

    function set(uint256 _a) public {
        x = _a;
    }
}
// ====
// ignore: true
// comment: Ignored since `storageEmpty` assertions are not supported in revive's REVM
// ----
// storageEmpty -> 1
// set(uint256): 1 ->
// storageEmpty -> 0
