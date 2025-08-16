contract c {
    function set() public returns (bool) {
        data = msg.data;
        return true;
    }

    function checkIfDataIsEmpty() public view returns (bool) {
        return data.length == 0;
    }

    function sendMessage() public returns (bool, bytes memory) {
        bytes memory emptyData;
        return address(this).call{gas: 100_000}(emptyData);
    }

    fallback() external {
        data = msg.data;
    }

    bytes data;
}
// ====
// EVMVersion: >=byzantium
// comment: This fails when the optimizer is enabled but succeeds when the optimizer is disabled which is very very strange
// ----
// (): 1, 2, 3, 4, 5 ->
// gas irOptimized: 155122
// gas legacy: 155473
// gas legacyOptimized: 155295
// checkIfDataIsEmpty() -> false
// sendMessage() -> true, 0x40, 0
// checkIfDataIsEmpty() -> true
