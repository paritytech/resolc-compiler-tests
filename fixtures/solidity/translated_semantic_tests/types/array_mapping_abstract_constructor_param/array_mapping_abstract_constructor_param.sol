abstract contract A {
	constructor (mapping (uint => uint) [] storage m) {
		m.push();
		m[0][1] = 2;
	}
}
contract C is A {
	mapping(uint => mapping (uint => uint) []) public m;
	constructor() A(m[1]) {
	}
}