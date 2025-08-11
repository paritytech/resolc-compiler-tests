contract C {
    mapping(uint a => mapping(uint b => uint c)) public x;
    constructor() {
        x[1][2] = 3;
    }
}