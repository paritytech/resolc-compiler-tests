interface A {}
contract test {
    mapping(A => uint8) public table;
    function set(A k, uint8 v) public {
        table[k] = v;
    }
    function get(A k) public returns (uint8) {
        return this.table(k);
    }
}