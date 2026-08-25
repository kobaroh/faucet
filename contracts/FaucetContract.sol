// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
import "./Owned.sol";
import "./Logger.sol";
import "./IFaucet.sol";

contract Faucet is Owned {

    uint public num0fFunders;

    mapping(address => bool) private funders;
    mapping(address => address) private lutFunders;
    // private -> can be accesible only within the smart contract
    // internal -> can be accesible within smart contract and also derived smart contract



    modifier limitWithdraw(uint withdrawAmount) {
        require(
            withdrawAmount  < 100000000000000000,
            "Cannot withdraw more than 0.1 ether "
            );
            _;
        
    }


    receive() external payable {}

    function emitLog() public override pure returns(bytes32) {
        return "Hello World";
    }

    function addFunds() external payable {
        address funder = msg.sender;

        if (!funders[funder]) {
            numOfFunders++;
            funders[funder] = true;
            lutFunders[numOfFunders] = funder;
        }
    }

    function test1() external {
        // some managing stuff that only admin should have access to
    }

    function test2() external {
        // some managing stuff that only admin should have access to
    }

    function withdraw(uint withdrawAmount) external limitWithdraw(withdrawAmount){
        payable(msg.sender).transfer(withdrawAmount);
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