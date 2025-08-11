pragma abicoder v2;
struct St0 {
    bytes el0;
}
contract C {
    function f() external returns (St0 memory) {
        St0 memory x;
        x.el0 = msg.data;
        return x;
    }
    function g() external returns (St0 memory) {
        bytes memory temp = msg.data;
        St0 memory x;
        x.el0 = temp;
        return x;
    }
    function hashes() external returns (bytes4, bytes4) {
        return (this.f.selector, this.g.selector);
    }
    function large(uint256, uint256, uint256, uint256) external returns (St0 memory) {
        St0 memory x;
        x.el0 = msg.data;
        return x;
    }
    function another_large(uint256, uint256, uint256, uint256) external returns (St0 memory) {
        bytes memory temp = msg.data;
        St0 memory x;
        x.el0 = temp;
        return x;
    }
}