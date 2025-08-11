contract C {
    function uf(bool b, uint x, uint y) public pure returns (uint) {
        require(b, "failure");
        return x - y;
    }
    function onlyPanic(bool b, uint x, uint y) public returns (uint r, uint code) {
        try this.uf(b, x, y) returns (uint b) {
            r = b;
        } catch Panic(uint c) {
            code = c;
        }
    }
    function panicAndError(bool b, uint x, uint y) public returns (uint r, uint code, string memory msg_) {
        try this.uf(b, x, y) returns (uint b) {
            r = b;
        } catch Panic(uint c) {
            code = c;
        } catch Error(string memory _errmsg) {
            msg_ = _errmsg;
        }
    }
}