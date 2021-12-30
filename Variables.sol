pragma solidity ^0.8.11;

contract WorkingWithVariables {

    uint256 public myUint;

    function setMyUint(uint _myuint) public {
        myUint = _myuint;
    }
    
    bool public myBool;

    function setMyBool(bool _mybool) public {
        myBool = _mybool;
    }

    uint8 public myUint8;

    function incrementUint() public {
        myUint8++;
    }

    function decrementUint() public {
        myUint8--;
    }

    address public myAddress;

    function setAddress(address _address) public {
        myAddress = _address;
    }

    function getBalanceofAddress() public view returns(uint) {
        return myAddress.balance;
    }

    string public myString;

    function setString(string memory _mystring) public {
        myString = _mystring;
    }

}