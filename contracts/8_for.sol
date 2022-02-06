pragma solidity ^0.6.0;

// for loops 
// conditionals 

contract MyContract{

    uint[] public numbers = [1,2,3,4,5,6,7,8,9];
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    // conditionals 
    function countEvenNumbers() public view returns (uint){
        uint count = 0;

        for(uint i = 0; i<numbers.length; i++){
            if( isNumberEven(numbers[i]) ){
                  count++;
            }
        }

        return count;
    }

    function isNumberEven(uint _number) public view returns(bool){
            if( _number % 2 == 0 ){
                return true;
            } else {
                return false; 
            }
    }

    function isOwneer() public view returns(bool){
        return(msg.sender == owner);
    }
}