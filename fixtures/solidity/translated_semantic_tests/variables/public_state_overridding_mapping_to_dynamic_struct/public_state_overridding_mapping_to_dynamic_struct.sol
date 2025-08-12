pragma abicoder               v2;
struct S { uint256 v; string s; }
contract A
{
	function test(uint256 x) external virtual returns (uint256 v, string memory s)
	{
	    v = x;
	    s = "test";
	}
}
contract X is A
{
	mapping(uint256 => S) public override test;
	function set() public { test[42].v = 2; test[42].s = "statevar"; }
}