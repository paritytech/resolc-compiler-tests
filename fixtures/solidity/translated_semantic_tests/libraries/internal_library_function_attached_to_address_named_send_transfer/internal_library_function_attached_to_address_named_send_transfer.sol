library L {
    function transfer(address a) internal {}
    function send(address a) internal {}
}
contract C {
    using L for address;
    function useTransfer(address a) public {
        a.transfer();
    }
    function useSend(address a) public {
        a.send();
    }
}