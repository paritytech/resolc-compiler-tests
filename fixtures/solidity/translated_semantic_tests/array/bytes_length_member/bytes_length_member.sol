contract c {
    function set() public returns (bool) {
        data = msg.data;
        return true;
    }
    function getLength() public returns (uint256) {
        return data.length;
    }
    bytes data;
}