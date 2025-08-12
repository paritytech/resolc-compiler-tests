pragma abicoder v2;
import "./_stringutils/stringutils.sol";
contract test {
    using strings for bytes32;
    using strings for string;
    using strings for strings.slice;
    function toSlice(string memory a) external pure returns (strings.slice memory) {
        return a.toSlice();
    }
    function roundtrip(string memory a) external pure returns (string memory) {
        return a.toSlice().toString();
    }
    function utf8len(string memory a) external pure returns (uint) {
        return a.toSlice().len();
    }
    function multiconcat(string memory a, uint count) public pure returns (string memory) {
        strings.slice memory s = a.toSlice();
        for (uint i = 0; i < count; i++) {
            s = s.concat(s).toSlice();
        }
        return s.toString();
    }
    function benchmark(string memory text, bytes32 seed) external pure returns (uint) {
        // Grow text.
        text = multiconcat(text, 10);
        strings.slice memory a = text.toSlice();
        strings.slice memory b = seed.toSliceB32();
        // Some heavy computation.
        bool c = b.equals(a) || b.startsWith(a);
        // Join as a list.
        strings.slice memory delim = c ? string(",").toSlice() : string(";").toSlice();
        strings.slice[] memory parts = new strings.slice[](2);
        parts[0] = a;
        parts[1] = b;
        string memory d = delim.join(parts);
        return d.toSlice().len();
    }
}