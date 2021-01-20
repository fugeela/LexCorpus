pragma solidity 0.8.0;

contract Whitelist {
    address public owner;
    mapping(address => bool) public whitelist;
    
    modifier onlyWhitelist {
      require(whitelist[msg.sender] = true);
      _;
   }
    
    constructor() {
        owner = msg.sender;
    }
    
    function addToWhitelist(address account) external {
        require(msg.sender == owner);
        whitelist[account] = true;
    }
    
    function changeOwner(address newOwner) external {
        require(msg.sender == owner);
        owner = newOwner;
    }
}
