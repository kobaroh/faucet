// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22 <0.9.0;

contract Storage {

    // keccak256(key . slot)
    mapping(uint => uint) public aa; // slot 0
    mapping(address => uint) public bb; // slot 1

    //keccak256(slot) + index of the item
    uint[] public cc; // slot 2

    uint8 public a = 7; // 1 byte
    uint16 public b = 10; //2 bytes
    address public c;
    bool d = true; // 1 byte
    uint64 public e = 15; // 8 bytes


    uint256 public f = 200; // 32 bytes -> slot 4

    uint8 public g = 40; // 1 byte -> slot 5
    
}