// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract struct_with_mapping
{
    struct student
    {
        string name;
        address ad;

    }
    mapping(uint=>student)public a;
    uint count=0;

     function add(uint index,string memory name,address ad)external
     {
            student memory s=student(name,ad);
            a[index]=s;
            count++;
     }
     function display()view external returns(string[]memory)
     {
        //when we use the memory we cannot create the dynmaic array so try to go with fixed size array
        
        uint temp=0;
    string[] memory b = new string[](count);
        while(temp<count)
        {
              b[temp]=a[temp].name;
              temp++;
        }
        return b;
     }

}