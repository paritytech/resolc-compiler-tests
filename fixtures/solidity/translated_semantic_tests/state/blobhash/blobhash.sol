contract C {
    function f(uint _index) public returns (bytes32) {
        return blobhash(_index);
    }
}