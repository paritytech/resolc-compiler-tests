pragma abicoder               v2;
contract C {
    uint[][2] public tmp_i;
    function i(uint[][2] calldata s) external { tmp_i = s; }
}