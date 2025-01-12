// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract contional
{
  function get(int y)pure external returns(int)
  {
    if(y%2==0)return 1;
     else if(y%3==0)return 3;
    return 0;
  }
}