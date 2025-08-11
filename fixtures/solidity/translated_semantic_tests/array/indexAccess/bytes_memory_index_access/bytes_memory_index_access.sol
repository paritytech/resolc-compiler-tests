contract Test {
    function set(bytes memory _data, uint256 i)
        public
        returns (uint256 l, bytes1 c)
    {
        l = _data.length;
        c = _data[i];
    }
}