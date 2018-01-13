pragma solidity ^0.4.0;
contract HelloWorld {

    address public owner;
    mapping(address => uint) balance;

    // constructor
    // runs once upon contract creation
    function HelloWorld() public payable {
        owner = msg.sender;
        balance[owner] = 1000;
    }

    function getBalance(address _user) public constant returns (uint) {
      return balance[_user];
    }
}
