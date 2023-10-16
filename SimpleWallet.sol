pragma solidity ^0.8.0;

contract SimpleWallet {
    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    receive() external payable {}

    function deposit() external payable {
        
    }

    function withdraw(uint256 amount) external onlyOwner {
        require(amount <= address(this).balance, "Insufficient balance");
        payable(owner).transfer(amount);
      
    }

    function changeOwner(address newOwner) external onlyOwner {
        owner = newOwner;
       
    }
}
