contract C {
    event TestA(function() external indexed);
    event TestB(function(uint256) external indexed);
    function f1() public {
        emit TestA(C(address(0x1234)).f1);
    }
    function f2(uint256 a) public {
        emit TestB(C(address(0x1234)).f2);
    }
}