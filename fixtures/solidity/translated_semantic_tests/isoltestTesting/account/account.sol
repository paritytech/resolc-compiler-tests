contract AccountBuiltinTest {
    function who_am_i() public returns (address result) {
        result = msg.sender;
    }
}