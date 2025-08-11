contract C {
    bytes s = "bcdef";
    function f(bytes memory a) public returns (bytes memory) {
        return bytes.concat(a, "bcdef");
    }
    function g(bytes calldata a) public returns (bytes memory) {
        return bytes.concat(a, "abcdefghabcdefghabcdefghabcdefghab");
    }
    function h(bytes calldata a) public returns (bytes memory) {
        return bytes.concat(a, s);
    }
    function j(bytes calldata a) public returns (bytes memory) {
        bytes storage ref = s;
        return bytes.concat(a, ref, s);
    }
    function k(bytes calldata a, string memory b) public returns (bytes memory) {
        return bytes.concat(a, bytes(b));
    }
    function slice(bytes calldata a) public returns (bytes memory) {
        require(a.length > 2, "");
        return bytes.concat(a[:2], a[2:]);
    }
    function strParam(string calldata a) public returns (bytes memory) {
        return bytes.concat(bytes(a), "bcdef");
    }
    function fixedBytesParam(bytes16 b1, bytes15 b2, bytes31 b3) public returns (
        bytes memory,
        bytes memory,
        bytes memory,
        bytes memory
    ) {
        return (
            bytes.concat(b1, b2),
            bytes.concat(b1, b3),
            bytes.concat(b1, "bcdef"),
            bytes.concat(b1, s)
        );
    }
    function fixedBytesParam2(bytes calldata c, bytes6 b1, bytes6 b2) public returns (bytes memory, bytes memory) {
        return (
            bytes.concat(s, b1, c),
            bytes.concat(b1, c, b2)
        );
    }
}