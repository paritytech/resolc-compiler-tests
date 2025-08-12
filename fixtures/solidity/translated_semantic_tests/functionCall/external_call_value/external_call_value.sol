pragma solidity >= 0.6.0;
contract C {
    function g(uint n) external payable returns (uint, uint) {
        return (msg.value * 1000, n);
    }
    function f(uint n) public payable returns (uint, uint) {
        return this.g{value: 10}(n);
    }
}