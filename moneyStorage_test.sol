pragma solidity ^0.5.7;

import "remix_tests.sol"; // this import is automatically injected by Remix.
import "./MoneyStorage.sol";


contract test_MoneyStorage {

    MoneyStorage wallet;
    
    function beforeEach() public {
        wallet = new MoneyStorage();
    }

    function initalFundsShouldBeZero() public {
        Assert.equal( wallet.funds(), uint(0), "Wallet should be empty" );
    }
    
    function shouldAddFunds() public {
        wallet.addFunds( 5 );
        Assert.equal( wallet.funds(), uint(5), "Wallet should not be empty" );
    }
    
    function shouldAddMultipleFunds() public {
        wallet.addFunds( 5 );
        wallet.addFunds( 2 );
        Assert.equal( wallet.funds(), uint(7), "Wallet should add multiple funds" );
    }
    
    function shouldSubtractExpensesFromFunds() public {
        wallet.addFunds( 5 );
        wallet.addExpense( 3 );
        Assert.equal( wallet.funds(), uint(2), "Wallet should subtract expenses from funds" );
    }
    
}
