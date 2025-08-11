interface I {
    event Event(address indexed _from, uint256 _value);
}
contract C {
    function emitEvent(uint256 _value) public {
        emit I.Event(msg.sender, _value);
    }
}