// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DegenToken is ERC20 {

    address payable public contractOwner;

    struct Rewards {
        
        string[] names;
        uint256[] prices;
    }

    struct Packs{
	
        Rewards prizes;
    }

    Packs public rwrds;

    constructor() ERC20 ( "Degen" , "DGN" ) {
        
        contractOwner = payable(msg.sender); 

        rwrds.prizes.names = [ "Skins Pack" , "OST" , "Voices Pack" , "Menu Themes" , "Unlock Evertyhing" ];
        rwrds.prizes.prices = [ 6 , 9 , 8 , 3 , 26 ];
    }

    function getBalance () external view returns ( uint256 ) {
        
        return balanceOf ( msg.sender );
    }

    function mintTokens ( address to , uint256 amount ) public {
        
        require ( msg.sender == contractOwner , "Only the owner of the contract can mint tokens!"); 

        _mint ( to , amount );
    }

    function burnTokens ( uint256 amount ) external {
	
        require ( balanceOf ( msg.sender ) >= amount , "You are trying to burn more tokens than the amount that you have." ); 

        _burn ( msg.sender , amount );
    }

    function transferTokens ( address to , uint256 amount ) external {

        require ( balanceOf ( msg.sender ) >= amount , "You are trying to transfer more tokens than the amount that you have."); 
        
        _transfer ( msg.sender, to, amount ); 
    }

    function redeemReward ( uint256 i ) external {

        require ( i > 0 && i <= rwrds.prizes.names.length , "That number is not on the list." ); 
        require ( balanceOf ( msg.sender ) >= rwrds.prizes.prices [ i - 1 ] , "You lack the tokens to redeem the reward"); 

        uint256 amount = rwrds.prizes.prices [ i - 1 ];
        _burn  ( msg.sender , amount );
    }
}
