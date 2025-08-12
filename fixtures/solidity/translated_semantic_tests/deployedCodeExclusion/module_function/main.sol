import "./mod.sol" as M;
contract C {
    bytes data;
    constructor() {
        data = M.longdata();
    }
    function test() public view returns (bool) {
        // Tests that the function longdata is not
        // included in the runtime code.
        uint x;
        assembly {
            x := codesize()
        }
        return x < data.length;
    }
}