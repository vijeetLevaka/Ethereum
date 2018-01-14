pragma solidity ^0.4.18;

contract Ether {
    address owner;
    uint256 public ethers;
    uint public unLockTime = now + 1 minutes;

    function Ether() payable public {
        owner = msg.sender;
        ethers = msg.value;
    }

    modifier Owner{
        require(msg.sender == owner &&  unLockTime < now);
        _;
    }

    function send() public Owner {
        selfdestruct(owner);
    }
}
