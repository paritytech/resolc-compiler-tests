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
        return address(this).call{gas: 10_000_000_000}(emptyData);
    }

    fallback() external {
        data = msg.data;
    }

    bytes data;
}
