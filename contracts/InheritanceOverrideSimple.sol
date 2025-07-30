// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "./Simple.sol";


//moto is to show inheritance, since "InheritanceOverrideSimple is Simple", so this contract 
//has all methods of Simple, also if in simple any method declared virtual, then here that method can be overriden
//assignmnet: we want to store 5 + fav number, instead of just storing fav no like in simple store does 
contract InheritanceOverrideSimple is Simple{
function store(uint256 _favoriteNumber) public override{
favoriteNumber=_favoriteNumber+5;
}

//this function is only in this, not from simple
function seefavnum() public view returns(uint256){
    return favoriteNumber;
}
//works well
}
