import "mod.sol" as M;
contract C {
    bytes data;
    function () pure returns (bytes memory) f;
    constructor() {
        data = M.longdata();
        f = M.longdata;
    }
    function test() public view returns (bool) {
        return keccak256(data) == keccak256(f());
    }
}