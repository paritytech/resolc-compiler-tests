contract c {
    uint[] data;

    function test() public {
        data.push(7);
        data.pop();
    }
}
// ====
// ignore: true
// comment: Ignored since `storageEmpty` assertions are not supported in revive's REVM
// ----
// test() ->
// storageEmpty -> 1
