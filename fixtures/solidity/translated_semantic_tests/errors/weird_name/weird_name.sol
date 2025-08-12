error error(uint a);
contract C {
    function f() public pure {
        revert error(2);
    }
}