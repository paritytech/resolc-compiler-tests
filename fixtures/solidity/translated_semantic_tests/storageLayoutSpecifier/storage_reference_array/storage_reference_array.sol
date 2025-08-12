contract C layout at 42 {
    uint[] public array;
    function initUsingReference() public {
        uint[] storage ptr = array;
        for(uint i = 0; i < 10; ++i)
            ptr.push(i + 1);
        validate(array);
    }
    function validate(uint[] memory ptr) public pure {
        for(uint i = 0; i < 10; ++i)
            require(ptr[i] == i + 1);
    }
}