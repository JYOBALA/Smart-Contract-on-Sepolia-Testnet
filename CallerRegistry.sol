pragma solidity ^0.8.0;

contract CallerRegistry {
    uint256 public counter;
    address public owner;
    string[] public callers;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function addCaller(string memory callerName) external {
        counter++;
        callers.push(callerName);

    }

    function getCallers() external view returns (string[] memory) {
        return callers;
    
    }

    function changeOwner(address newOwner) external onlyOwner {
        owner = newOwner;
       
    }
}
