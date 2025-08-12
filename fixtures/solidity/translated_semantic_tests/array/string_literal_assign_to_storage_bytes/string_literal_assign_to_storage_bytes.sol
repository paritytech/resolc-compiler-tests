contract C {
    bytes public s = "abc";
    bytes public s1 = "abcd";
    function f() public {
        s = "abcd";
        s1 = "abc";
    }
    function g() public {
        (s, s1) = ("abc", "abcd");
    }
}