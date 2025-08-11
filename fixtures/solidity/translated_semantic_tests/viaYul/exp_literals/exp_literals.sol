contract C {
    function exp_2(uint y) public returns (uint) {
        return 2**y;
    }
    function exp_minus_2(uint y) public returns (int) {
        return (-2)**y;
    }
    function exp_uint_max(uint y) public returns (uint) {
        return (2**256 - 1)**y;
    }
    function exp_int_max(uint y) public returns (int) {
        return ((-2)**255)**y;
    }
    function exp_5(uint y) public returns (uint) {
        return 5**y;
    }
    function exp_minus_5(uint y) public returns (int) {
        return (-5)**y;
    }
    function exp_256(uint y) public returns (uint) {
        return 256**y;
    }
    function exp_minus_256(uint y) public returns (int) {
        return (-256)**y;
    }
}