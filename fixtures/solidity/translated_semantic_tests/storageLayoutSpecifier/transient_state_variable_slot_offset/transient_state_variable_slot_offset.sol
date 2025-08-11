contract C layout at 7 {
    int transient x;
    int y;
    uint transient w;
    uint256 z;
    function xSlotOffset() public returns(uint s, uint o) { assembly { s := x.slot o := x.offset } }
    function ySlotOffset() public returns(uint s, uint o) { assembly { s := y.slot o := y.offset } }
    function wSlotOffset() public returns(uint s, uint o) { assembly { s := w.slot o := w.offset } }
    function zSlotOffset() public returns(uint s, uint o) { assembly { s := z.slot o := z.offset } }
}