//SPDX-License-Identifier: Unlicensed 

pragma solidity ^0.8.11;

contract startStopUpdate {
    address owner;

    bool public paused;

    constructor() {
        owner = msg.sender;
    }

    function sendMoney() public payable {

    }


    function setPaused(bool _paused) public {
        require(msg.sender == owner, "Owner could not be verified");
        require(!paused, "Contract is paused");
        paused = _paused;
    }


    function withDrawAllMoney(address payable _to) public {
        require(msg.sender == owner, "Owner could not be verified");
        _to.transfer(address(this).balance);
    
    }
}