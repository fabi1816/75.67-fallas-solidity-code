pragma solidity ^0.5.7;

// Simple contract to keep track of the money I have on my person
contract MoneyStorage {
    
    uint storedMoney;
    
    function funds() public view returns (uint) {
        return storedMoney;
    }
    
    function addFunds(uint money) public {
        require( money <= 1000, "Too much money!");
        storedMoney += money;
    }
    
    function addExpense(uint expense) public {
        require( expense <= storedMoney, "Not enought funds to spent" );
        storedMoney -= expense;
    }
}
