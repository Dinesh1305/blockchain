// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract function_return{
    uint number;
    string name;
    function get()public pure  returns (uint,string memory)
    {
        return (1,"dinesh");
      
    }

    function display()external 
    {
      (number,name)=get();
    }
    function getdetails()external view returns (uint, string memory )
    {
     return (number,name);
    }

}