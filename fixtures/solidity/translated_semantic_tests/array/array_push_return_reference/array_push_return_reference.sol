contract C {
    uint[] storageArray;
    function test(uint256 v) public {
        storageArray.push() = v;
    }
    function getLength() public view returns (uint256) {
        return storageArray.length;
    }
    function fetch(uint256 a) public view returns (uint256) {
        return storageArray[a];
    }
}