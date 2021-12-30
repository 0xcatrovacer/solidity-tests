pragma solidity ^0.8.11;

contract sendMoneyExample {

    uint public balanceReceived;

    function receiveEth() public payable {
        balanceReceived += msg.value;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function withDrawEth() public {
        address payable to = payable(msg.sender);

        to.transfer(this.getBalance());
    }

    function withdrawMoneyTo(address payable _to) public {
        _to.transfer(this.getBalance());
    }

}