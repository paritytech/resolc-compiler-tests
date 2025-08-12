interface A {}
contract test {
    mapping(A => uint8) table;
    function get(A k) public returns (uint8 v) {
        return table[k];
    }
    function set(A k, uint8 v) public {
        table[k] = v;
    }
}