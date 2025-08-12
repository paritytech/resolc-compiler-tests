contract C {
    uint256[] storageArray;
    function pushEmpty(uint256 len) public {
        while(storageArray.length < len)
            storageArray.push();
        for (uint i = 0; i < len; i++)
            require(storageArray[i] == 0);
    }
}