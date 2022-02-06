pragma solidity ^0.6.0;


contract Counter{
    // 1,2,3...
    // state variable - gets stored on the blockchain
    // whenever the state variable is public then solidity will craete a get function behind the scenes for you
    uint public count=1;

    // constructor() public{
    //     count = 0;
    // }


    // view = view the count and not change anything
    // function getCount() public view returns(uint) {
    //     return count;
    // }

    function incrementCount() public {
        count = count + 1;
    }

}
