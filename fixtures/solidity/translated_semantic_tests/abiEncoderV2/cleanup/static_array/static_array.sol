pragma abicoder               v2;
contract C {
    function gggggggg(uint8[2] calldata s) external pure returns (bytes memory) {
        s[0]; // only this will validate.
        return msg.data;
    }
    function f(uint256 a, uint256 b) public returns (bytes memory) {
        uint8[2] memory m = [0,0];
        assembly {
            mstore(m, a)
            mstore(add(m, 0x20), b)
        }
        return this.gggggggg(m);
    }
}