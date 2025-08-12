contract B {
    function ext() external {}
    function pub() public {}
}
contract D {
    function test() public returns (bytes4, bytes4) {
        return (B.ext.selector, B.pub.selector);
    }
}