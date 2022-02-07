pragma solidity ^0.6.0;

// Sample contract example 
// This will be a contract for a hotel room and open a room 
// Cover 
    // 1. Ether - Pay smart contracts 
    // 2. Modifiers 
    // 3. Visibility 
    // 4. Events 
    // 5. Enums 

contract HotelRoom{

     address payable public owner;
     enum Statuses { Vacant, Occupied };
     Statuses currentStatus;

     event Occupy(address _occupant, unit _value);

     constructor() public{
         owner = msg.sender -> owner=payable(msg.sender); // user who calls this function or the person who deployed this contract
         currentStatus Statuses.Vacant;
     }

     modifier onlyWhileVacant{
         // This is useful if you need to check multiple functions

         require(currentStatus == Statuses.Vacant, "Currently Occupied.");
         _; // This will execute the function body
     }

     modifier costs (uint _amount){
         // Require checks certain conditions before further execution
         require(msg.value >= _amount, "Not enough ether provided"); 
         _;
     }
     
     // Receive is the function that gets called when etherum is sent to this smart contract
     receive() external payable onlyWhileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }

}