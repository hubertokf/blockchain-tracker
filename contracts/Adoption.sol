pragma solidity ^0.5.0;

contract Adoption {

  address[16] public adopters;

  function adopt(uint petId) public returns (uint) {

    // msg.sender is the transaction owner
    adopters[petId] = msg.sender;

    return petId;

  }

  // function to get a adoptant list of the petId
  function getAdopters() public returns (address[16] memory) {

    return adopters;

  }

}