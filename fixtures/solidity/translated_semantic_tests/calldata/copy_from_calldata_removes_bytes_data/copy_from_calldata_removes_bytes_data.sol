contract c {
    function set() public returns (bool) { data = msg.data; return true; }
    function checkIfDataIsEmpty() public returns (bool) { return data.length == 0; }
    function sendMessage() public returns (bool, bytes memory) { bytes memory emptyData; return address(this).call(emptyData);}
    fallback() external { data = msg.data; }
    bytes data;
}