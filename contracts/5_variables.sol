pragma solidity ^0.6.0;

contract Variables {

    //state variables
    int public myInt = 1; 
    uint public myUnit = 1;
    uint8 public myUnit8 = 1;
    uint256 public myUnit256 = 1; //bigger numbers
    string public myString = "Hello, World!";
    // address public myAddress = 0xea674fdde714fd979de3edf0f56aa9716b898ec8;

    struct MyStruct {
        uint myInt;
        string name;
    }

    MyStruct public myStruct = MyStruct(1,"Hello World");

    // local variables 
    function getValue() public pure returns(uint)  {
        uint value = 1;
        return value; 
    }


    
}