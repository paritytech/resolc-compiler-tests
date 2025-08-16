// Implementation of OpenZepplin's
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol
// using user defined value types.
contract Ownable {
    type Owner is address;
    Owner public owner = Owner.wrap(msg.sender);
    error OnlyOwner();
    modifier onlyOwner() {
        if (Owner.unwrap(owner) != msg.sender) revert OnlyOwner();
        _;
    }
    event OwnershipTransferred(
        Owner indexed previousOwner,
        Owner indexed newOwner
    );
    function setOwner(Owner newOwner) external onlyOwner {
        emit OwnershipTransferred({previousOwner: owner, newOwner: newOwner});
        owner = newOwner;
    }
    function renounceOwnership() external onlyOwner {
        owner = Owner.wrap(address(0));
    }
}