contract C {
    string uninitializedString;
    string emptyString = "";
    string nonEmptyString = "This is a non empty string";
    string nonEmptyString2 = "Another string";
    bytes uninitializedBytes;
    bytes emptyBytes = "";
    error EmptyError(string);
    event EmptyEvent(string);
    function f() public returns (string memory) {
        return uninitializedString;
    }
    function g() public returns (string memory, string memory) {
        return (uninitializedString, emptyString);
    }
    function h() public returns (string memory, string memory) {
        return (uninitializedString, nonEmptyString);
    }
    function i() public returns (string memory, string memory) {
        return (nonEmptyString, emptyString);
    }
    function j(string calldata _s) public returns (string memory) {
        return _s;
    }
    function k() public returns (string memory) {
        nonEmptyString2 = "";
        return nonEmptyString2;
    }
    function l(string calldata _s) public returns (bytes memory) {
        return abi.encode(_s);
    }
    function m() public returns (string memory) {
        bytes memory b = abi.encode(emptyString);
        return string(b);
    }
    function n() public {
        revert EmptyError(uninitializedString);
    }
    function o() public {
        emit EmptyEvent(emptyString);
    }
    function p() public {
        emit EmptyEvent("");
    }
    function q() public returns (bytes memory) {
        return uninitializedBytes;
    }
    function r() public returns (bytes memory) {
        emptyBytes = abi.encode("");
        return emptyBytes;
    }
    function s() public returns (bytes memory) {
        emptyBytes = abi.encode(uninitializedString);
        return emptyBytes;
    }
    function set(string calldata _s) public {
        nonEmptyString = _s;
    }
    function get() public returns (string memory) {
        return nonEmptyString;
    }
}