import "_base64/base64_inline_asm.sol";
import "_base64/base64_no_inline_asm.sol";
contract test {
    function encode_inline_asm(bytes memory data) external pure returns (string memory) {
      return InlineAsmBase64.encode(data);
    }
    function encode_no_asm(bytes memory data) external pure returns (string memory) {
      return NoAsmBase64.encode(data);
    }
    function encode_inline_asm_large() external {
      for (uint i = 0; i < 1000; i++) {
        InlineAsmBase64.encode("foo");
      }
    }
    function encode_no_asm_large() external {
      for (uint i = 0; i < 1000; i++) {
        NoAsmBase64.encode("foo");
      }
    }
}
// Test cases derived from Base64 specification: RFC4648
// https://datatracker.ietf.org/doc/html/rfc4648#section-10
//