pragma abicoder v1;
contract test {
    enum E { A, B, C }
    mapping(E => uint8) public table;
    function set(E k, uint8 v) public {
        table[k] = v;
    }
    function get(E k) public returns (uint8) {
        return this.table(k);
    }
}