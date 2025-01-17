// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract golbalvar
{
    function display ()external view returns(address,uint,uint)
    {
    address a=msg.sender;
    uint b=block.timestamp;
    uint c=block.number;//number of current block
     return (a,b,c);
    }
}