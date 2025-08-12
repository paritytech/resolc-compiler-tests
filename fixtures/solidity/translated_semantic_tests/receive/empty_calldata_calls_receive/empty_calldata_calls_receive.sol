contract A {
    uint public x;
    receive () external payable { ++x; }
}