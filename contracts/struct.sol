// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract struct1
{
    struct student
{
    string name;
    uint roll_no;
    
    address address_of_student; 
}
//it like the class in the java use dot for assign element or like constructor
//array of struct
student[] public s;

function add(string memory name,uint roll_no,address address_of_student) external {
    student memory t= student(name,roll_no,address_of_student);
    s.push(t);
}
function add2(string memory name,uint roll)external
{
 student memory t;
 t.name=name;
 t.roll_no=roll;
 s.push(t);
}
function add3(string memory name ,uint roll, address a)external
{
    s.push(student (name,roll,a));
}
function remove(uint index)external returns(student memory)
{
    student memory t=s[index];
    s[index]=s[s.length-1];
    s.pop();
    return t;

}

}