// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
//if we use the keyword delete it not reduced the size of it change that index to default value
contract array
{
    int[] public a;//variable size array it like work like the stack the function all also same push pop
    int [5] public b;//fixed size array


    function add(int y)external {
        for(int i=0;i<y;i++)
        {
            a.push(i);
        }
        delete a[a.length-1];
    }
    function remove() external 
    {
        for(uint j=a.length-1;j>0;j--)
        {
          a.pop();
        }
    }
    function get()external view returns(int[] memory)
    {
        return a;
    }


}