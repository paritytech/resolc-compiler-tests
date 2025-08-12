contract C {
    uint[] storageArray;
    function popEmpty() public {
        storageArray.pop();
    }
}