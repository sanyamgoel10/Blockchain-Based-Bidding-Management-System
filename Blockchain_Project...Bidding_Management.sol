pragma solidity ^0.4.25;

contract BiddingManagement
{

    // Structure for bid...having bidder's address and bid amount
    struct Bid {
        address user;
        uint bidAmount;
    }

    // AllBids[] array to store all bids
    Bid[] AllBids;

    // Initializing the contract with a bid (address = 0x0, amount = 0)
    constructor() public {
        AllBids.push(Bid(0x0, 0));
    }

    // Function to make a bid...it will have input as _bidPrice
    // always make a bid getter than previous bid
    // highest bid will be stored at last index
    function Submit_Bid(uint _bidPrice) public {
       
        uint lastIndex = AllBids.length - 1;
        require(_bidPrice > AllBids[lastIndex].bidAmount);
        
        AllBids.push(Bid(msg.sender, _bidPrice));
    }

    // function will return the Winner
    // it will return last indexed value of AllBids array
    function Winner() public view returns (address, uint) {
        
        uint lastIndex = AllBids.length - 1;
        return (AllBids[lastIndex].user, AllBids[lastIndex].bidAmount);
    }

    // Function to return the total number of bids placed
    function Total_Number_Of_Bids() public view returns (uint) {
        return AllBids.length;
    }
    
    // Function to return a single bid from the array by index
    function Bid_search(uint index) public view returns (address, uint) {
        return (AllBids[index].user, AllBids[index].bidAmount);
    }


}