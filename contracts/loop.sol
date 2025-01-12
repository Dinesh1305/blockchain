// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract loop1
{
    uint public sum=0;
    function run(uint n)external
    {

    for (uint j=0;j<n;j++) 
{
  sum+=j;
}
    }
    function get() external view returns (uint)
    {
        return sum;
    }
}