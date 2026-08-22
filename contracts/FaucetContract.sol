// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Faucet {

    uint public num0fFunders;
    mapping(address => bool) private funders;
    mapping(address => address) private lutFunders;
    // private -> can be accesible only within the smart contract
    // internal -> can be accesible within smart contract and also derived smart contract

    receive() external payable {}

    function addFunds() external payable {
        address funder = msg.sender;

        if (!funders[funder]) {
            numOfFunders++;
            funders[funder] = true;
            lutFunders[numOfFunders] = funder;
        }
    }

    function getAllFunders() external view returns (address[] memory) {
        address[] memory_founders = new address[](numOfFunders);

        for (unit i = 0; i < numOfFunders; i++) {
            _funders[i] = funders[];

            return _funders;
        }
    }

    function getFunderAtIndex(uint8 index) external view returns (address) {
    return funders[index]; 
    } 

    
}