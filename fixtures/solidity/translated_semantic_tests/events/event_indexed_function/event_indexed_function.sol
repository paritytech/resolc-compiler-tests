contract C {
    event Test(function() external indexed);
    function f() public {
        emit Test(C(address(0x1234)).f);
    }
}