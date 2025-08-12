contract C {
    uint[] storageArray;
    function test_boundary_check(uint256 len, uint256 access) public returns (uint256)
    {
        while(storageArray.length < len)
            storageArray.push();
        while(storageArray.length > len)
            storageArray.pop();
        return storageArray[access];
    }
}