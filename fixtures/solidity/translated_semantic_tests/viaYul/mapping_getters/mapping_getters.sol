contract test {
    mapping(uint256 => uint256) public m1;
    mapping(uint256 => mapping(uint256 => uint256)) public m2;
    function set(uint256 k, uint256 v) public {
        m1[k] = v;
    }
    function set(uint256 k1, uint256 k2, uint256 v) public {
        m2[k1][k2] = v;
    }
}