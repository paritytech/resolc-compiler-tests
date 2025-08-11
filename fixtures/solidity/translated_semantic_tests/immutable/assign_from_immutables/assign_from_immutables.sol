contract C {
	uint immutable public a;
	uint immutable public b;
	uint immutable public c;
	uint immutable public d;
	constructor() {
		a = 1;
		b = a;
		c = b;
		d = c;
	}
}