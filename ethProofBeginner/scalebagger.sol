// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract NewToken {

                   // public variables indicated
               string public tokenName = 'scalebagger';
            string public tokenAbbrv = 'SCL';
          uint public totalSupply = 0;

                                                            // mapping variable here
                                             mapping(address => uint) public balances;


                                             // mint f_n
  function mint(address _address, uint _amount) public {
                                  totalSupply += _amount;
                           balances[_address] += _amount;
    }


                                                    // burn f_n                                 
         function burn(address _address, uint _amount) public {
   require(balances[_address] >= _amount, "INSUFFICIENT FUNDS");
                                         totalSupply -= _amount;
                                  balances[_address] -= _amount;
    }
}
