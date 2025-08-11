contract A {
    uint data;
    receive() external payable { ++data; }
    function getData() public returns (uint r) { return data; }
}
contract B is A {}