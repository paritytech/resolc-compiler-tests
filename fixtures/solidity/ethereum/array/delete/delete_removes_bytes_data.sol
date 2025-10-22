contract c {
    fallback() external {
        data = msg.data;
    }

    function del() public returns (bool) {
        delete data;
        return true;
    }

    bytes data;
}
// ====
// ignore: true
// comment: Ignored since `storageEmpty` assertions are not supported in revive's REVM
// ----
// (): 7 ->
// storageEmpty -> 0
// del(): 7 -> true
// storageEmpty -> 1
