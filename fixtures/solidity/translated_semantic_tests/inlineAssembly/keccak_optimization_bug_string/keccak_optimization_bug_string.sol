contract C {
    function f(string memory s) public returns (bool ret) {
        assembly {
            let a := keccak256(s, 32)
            let b := keccak256(s, 8)
            ret := eq(a, b)
        }
    }
}