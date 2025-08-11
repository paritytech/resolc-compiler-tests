// Invoke some features that use memory and test that they do not interfere with each other.
contract Helper {
    uint256 public flag;
    constructor(uint256 x) {
        flag = x;
    }
}
contract Main {
    mapping(uint256 => uint256) map;
    function f(uint256 x) public returns (uint256) {
        map[x] = x;
        return
            (new Helper(uint256(keccak256(abi.encodePacked(this.g(map[x]))))))
                .flag();
    }
    function g(uint256 a) public returns (uint256) {
        return map[a];
    }
}