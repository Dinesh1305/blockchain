// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract function1
{
    //if we use the keywird pure we cannot use the outsie variable
    function add(int num1,int num2) public  pure returns(int)
    {
    
        return num1+num2;
    }
    function sun(int num1,int num2)public pure   returns (int)
    {
        return num1-num2;
    }
}