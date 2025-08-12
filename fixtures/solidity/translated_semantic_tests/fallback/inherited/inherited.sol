contract A {
    uint data;
    fallback() external { data = 1; }
    function getData() public returns (uint r) { return data; }
}
contract B is A {}