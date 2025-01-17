// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract ownerable
{
    address private owner;
    uint public money;
    constructor()
    {
     owner=msg.sender;
    }

    modifier check()
    {
        require(owner==msg.sender);
        _;
    } 
   int  private  coin=500;
   function getcoin() external check 
   {
    if(coin>0)
    {
    money+=1;

    coin--;
    }
   } 
   function change_owner(address newowner)   external check{

    if(newowner!=address(0))
    {
      owner=newowner;
    }
   }
   function spend() external view returns(uint)
   {
    return money;
   }
}