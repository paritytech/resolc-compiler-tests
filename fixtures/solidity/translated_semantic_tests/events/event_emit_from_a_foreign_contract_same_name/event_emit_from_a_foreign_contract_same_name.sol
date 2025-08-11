contract C {
    event E(uint256 value);
}
contract D {
    event E(uint256 value);
    function test() public {
        emit C.E(1);
        emit E(2);
    }
}