// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract counter
{
    uint  public count =0;
    function  add() public
    {
        count+=1;
    }
    function decrease() public 
    {
        count-=1;
    }
}