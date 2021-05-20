# Blockchain-Based-Bidding-Management-

Introduction:
A contract represents a buyer-seller agreement, sellers need to publish for each new bid a new contract/ or new entry in an array within a single same contract, and then a buyer selects the most appropriate offer by consulting the different existing bids (contracts/array).

Implementation:
The project is Ethereum blockchain based as it provides the highest support for smart contracts creation. Solidity scripting language is used for writing smart contract. Remix IDE is being used for implementing the code and deploying the contract with 15 test users provided by it.

Program Functionality:
● Submit_Bid - This function is used to make a bid for any item. The user makes a bid of the desired amount from his account. The user address and the bid amount is saved in the array of all bids “AllBid” in an increasing order of amounts. 
● Winner - This function declares the winner of the auction. It returns the maximum bid amount and the user who made it. 
● Total_Number Of_Bids - This function returns the total number of bids placed for the item. 
● Bid_Search - This function is used by the auctioneer to search which user has placed a bid of how much amount.

Usage of Project:
● Privacy - publicly verifiable correctness without sacrificing the privacy of the Bids. ● Transparency - peer-to-peer network that maintains history of all transactions(Bids). 2
● Reward - Highest Bidder is declared winner just after the auction is over without any tampering in the results in no delay.
