# SCALEBAGGER

A simple blockchain currency with functionality for minting and burning

## Description

My code is found in the file scalebagger.sol

blockchain token named SCL

Any user can mint tokens

Any user can burn tokens

## Getting Started

visit the remix ide website

create a new file called scalebagger.sol under the contracts folder in the remix ide explorer

copy and paste the code in this directory into the new file you created

select the appropriate solidity compiler (specified on the pragma line) and compile the contract

### Installing

following compilation you can deploy to any blockchain mainnet or testnet

this will require that you connect your metamask account to the remix ide

you will also need to pay gas fees for contract deployment

you can also test the contract in the remix ide with the remix vm

### Executing program

* start by minting tokens to a given address using the mint function

    this requires you to input the address you are minting to, and the amount of tokens you want to mint.

  * now you can check the balance of that address using the balances function

    this requires you to input the address of the user whose balance, you want to check

* you can also burn tokens  using the same inputs as the mint function.

    the amount of tokens you specify will be removed from the balance of the address you provided, destroying them

* you can check the total supply at any moment using totalSupply, it takes no input

* similarly you can check for tokenName, and tokenAbbrv

## Help

PROBLEMS WITH CONTRACT

anyone can mint tokens
extra functionality is required to make sure only moderator address can mint tokens

anyone can burn tokens even if they don't own those tokens
extra functionality is required to make sure one can only burn tokens they own

## Authors
yemoh347
