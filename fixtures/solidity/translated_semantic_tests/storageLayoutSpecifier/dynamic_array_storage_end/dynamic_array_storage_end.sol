contract C layout at 2**256 - 2 {
    uint[] array;
    function init() public {
        for (uint i = 0; i < 1000; ++i)
            array.push(i + 1);
    }
    function validate() public {
        for (uint i = 0; i < 1000; ++i)
            require(array[i] == i + 1);
    }
    function clear() public {
        for (uint i = 0; i < 1000; ++i)
            array.pop();
    }
}