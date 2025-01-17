// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract call{
int [6]public arr;
function add( int[6] memory a)external 
{
    arr=a;
}
function add1(int [6]calldata a)external
{
   
   
   // a[0]=1111;
    //if we use the keyword calldata then we cannot modifer the data we give has the input
}
function add2()external 
{
    int [6]storage a=arr;
    a[0]=222;
    //it is works like the pointer if we use the storage varible
}
function changet(uint index ,int newvalue)external
{
    arr[index]=newvalue;

}

}