contract test {
    mapping(uint => uint[8]) public data;
    mapping(uint => uint[]) public dynamicData;
    constructor() {
        data[2][2] = 8;
        for (uint i = 0; i < 3; i++)
            dynamicData[2].push();
        dynamicData[2][2] = 8;
    }
}