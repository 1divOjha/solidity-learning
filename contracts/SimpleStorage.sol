// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SimpleStorage {
    uint256 public myfavnum =100; // by defult its of type storage
    int256 mynum1=900; // by default its value is initialised to 0
    //if i used public visibility specifier, it returns a getter function basically. Others are by default "internal";

    string public myname ="divya";
    address public myarea= 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // bool hasfavnum=true;

    address myadd=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

        //store() - is a regular function 
        function store(int256 _favnum) public {
            mynum1= _favnum + 100;
            
        }

        //view , pure 
        function retrieve() public view returns(int256){
            // mynum1+=70; , cant modify
           return mynum1;
        } 


function add(uint256 _ans1,int256 _ans2) public returns (uint256, int256){
    myfavnum=_ans1;
    mynum1=_ans2;
    return (myfavnum, mynum1);
     
}

}