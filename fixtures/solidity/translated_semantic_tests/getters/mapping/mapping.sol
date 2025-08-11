contract C {
    mapping(uint => mapping(uint => uint)) public x;
    constructor() {
        x[1][2] = 3;
    }
}