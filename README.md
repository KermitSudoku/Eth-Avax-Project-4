# DegenGaming ERC20 Tokens

This program is used to demonstrate and deploy activity and tokens in a decentralized network like Avalanche, utilizing monitoring systems like Snowtrace to track blockchain activities.


## Description

DegenGaming is employing you to create DegenToken, an ERC20 smart contract that will mint tokens that will serve as their in-game currency that will can be earned by their players which can be used to redeem items from their store, transfer


## Source Code Content

This contract contains the following components:

1. **Token Details**:
	- The contract has a state variable to store the address of the contract owner in the `contractOwner` variable. 
	- The contract has the struct `Rewards` to instantiate the arrays that will hold the names and prices of the items in the store. 
	- It another struct `Packs` to instantiate the first struct with the object `prizes`. 
	- It has the object instance `rwrds` to declared with the `Packs` struct with a `public` option so its contents can be accessed by anyone. 

2. **Constructor**:
	- The constructor assgins the address of the address of the user that deployed the contract to `contractOwner`. 
	- It has the `rwrds.prizes.names[]` and the `rwrds.prizes.prices[]` to store the values for the names and prices for the rewards that players can redeem using their tokens. 
	
3. **getBalabce function**
	- It returns the balance of the sender of the function via the `balanceOf` function inherited from the ERC20 solidity file. 
	
3. **mintTokens function**:
	- This function has the `require` statement which restricts the function to only be able to be called by the contract owner. 
	- It has the `_mint` function inherited from the the ERC20 solidity file to mint tokens to the account address. 

4. **burnTokens function**:
	- This function has the `require` statement which restricts the function to only be able to be called if the balance of the user is more than or equal to the amount they're trying to burn. 
	- It has the `_burn` function inherited from the ERC20 solidity file to reduce the number of balance from an address. 

5. **transferTokens function**:
	- This function has another `require` statement which restricts the function to only be able to be called if the balance of the user is more than or equal to the amount they're trying to transfer. 
	- It has the `_transfer` function inherited from the ERC20 solidity file to transfer balance from the user's address to another address. 
	
6. **redeemTokens function**
	- This function has the `require` statement which restricts the function to only accept an index from 1 to 5. 
	- It has another `require` statement which restricts the function to only be able to be called if the balance of the user is more than or equal to the price of the item they're redeeming. 
	- This function has the `amount` local variable to store the amount of tokens that will be deducted from a player's account equal to the price of the item they're redeeming.  
	- This function also has the `_burn` function to burn balance from an account equal to the item price the account owner is redeeming. 


## Program Requirements and Setup

### [Remix](https://remix.ethereum.org) 

Remix Etherium IDE is a browser-based integrated development environment used to deploy smart contracts. You will be using Remix so you can interact with the contract that you will deploy. 

### [Snowtrace](https://testnet.snowtrace.io/)

Snowtrace, more specifically its Fuji C-Chain test network variant, will serve as your front-end to monitor the transactions that are going through your deployed contract.

### [Metamask](https://metamask.io/)

Metamask is a cryptocurrency wallet that will serve as the bridge between Remix and Snowtrace. This is so that your transactions in Remix can be publicly available to be viewed in Snowtrace. Metamask will also serve as your wallet to track your funds so you can do your transactions. 


## Executing the program

To run this program, go to the Remix' website at https://remix.ethereum.org/, click the hamburger(☰) besides the Workspaces, click the clone button, and enter this link https://github.com/KermitSudoku/Eth-Avax-Project-4.

Make sure that you have an account in Metamask and it has AVAX Tokens because it will be used to deploy the contract and do transactions. 

Click the Vertical Ellipsis (⋮) at the top of the Metamask popup tab, go to Settings > Networks > Add network. Scroll down and click add a network manually.

Put these in their respective fields:

 Network Name: 	Avalanche Fuji C-Chain 
  New RPC URL: 	https://api.avax-test.network/ext/bc/C/rpc 
      ChainID: 	43113 
       Symbol: 	AVAX 
     Explorer: 	https://testnet.snowtrace.io/

Click sav, choose them under the dropdown button at the topleft portion. 

Deploy your contract, connect with Metamask, and confirm transaction. 

After deploying, copy the address by clicking the copy button besides the remove button. Go to this [link](https://testnet.snowtrace.io/), paste the contract address in the search field, and click the magnefying glass button.

In case you lose your contract instance in Remix, you can retrieve it by pasting the contract address in the At Address field.

### Using the program

You can interact with the contract's functions under the deployed contracts part of the Remix site. 

You can monitor the activities and transactions that are circulating through your contrant with Snowtrace. 

You can also monitor your account's transactions with Metamask. 

## Authors

Contributors names and contact info

Jarod Jangcan
[KermitSudoku](https://github.com/KermitSudoku)

