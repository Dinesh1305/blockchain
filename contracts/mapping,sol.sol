// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract map
{
//note their no inbuilt function fro find the size of the map so because the size variable inside the add and reduced when the remove function is called
mapping(string=>uint) public m;
uint size=0;
string [] keys;
function add(string memory name,uint amount)external {

    m[name]=amount;
    keys.push(name);
    size++;
}

function update(string memory name,uint newvalue)external 
{
    m[name]=newvalue;
}
function remove(string memory name)external 
{
    delete m[name];
   /// delete keys[name];
    size--;
}



}