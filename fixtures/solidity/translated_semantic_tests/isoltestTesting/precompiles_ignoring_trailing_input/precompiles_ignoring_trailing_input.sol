contract C {
    function ecRecover(uint[4] memory input) public returns (bytes memory) {
        (bool success, bytes memory encodedOutput) = address(1).call(abi.encode(input));
        require(success);
        return encodedOutput;
    }
    function ecAdd(uint[4] memory input) public returns (bytes memory) {
        (bool success, bytes memory encodedOutput) = address(6).call(abi.encode(input));
        require(success);
        return encodedOutput;
    }
    function ecMul(uint[3] memory input) public returns (bytes memory) {
        (bool success, bytes memory encodedOutput) = address(7).call(abi.encode(input));
        require(success);
        return encodedOutput;
    }
}