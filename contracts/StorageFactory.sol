// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "contracts/Simple.sol";

contract StorageFactory{


//***********************************************************************************************************************
// Simple public storesc ; // // A public variable to store the address of the deployed Simple contract

// function deployingSimpleFromhere() public {
// // creating an instance of Simple sc
//  Simple sstoreobject = new Simple(); // Creating an instance of Simple smart contract
//  storesc = sstoreobject; // Storing the address of the newly deployed Simple contract

// }
//********************************************************************************************************************************

// Simple[] public sstore;  // array of Simple sc created, for storing its multiple instances
//  function sf() public {
//     Simple ssinstance= new Simple(); // Creating an instance of Simple smart contract
//     sstore.push(ssinstance); // Storing the address of the newly deployed Simple contract in the array 
//  }

//*********************************************************************************************************************************


//want to call store function of S mart contract Simple, from this smart contract- composibility
Simple[] public ssarray;
function deployss() public {
    Simple ssinstance = new Simple();
    ssarray.push(ssinstance);
}

//since have an array of simple sc now,and we want ot store in it, so for this store we ll enter fav no as well as index no in this
function storeinSF(uint256 _indexofsimple, uint256 _favnosimple) public {
    //.store(), will work because  we imported simple and it has store and we are calling on a single sc frpm the array here
    //******************we need address and ABI, BUT SINCE WE IMPORTD WE HAVE IT******************************
    ssarray[_indexofsimple].store(_favnosimple);
}

//we want to see what we put at index in this array, so we are gonna call retrieve() of simple, which returns fav no . so we ll call retrieve on a Simple sc
function getfavnoinSF(uint256 _indexofsimple) public view returns(uint256 ){
    return ssarray[_indexofsimple].retrieve();
}

//works well

//**************************************************************************************************************************************************************************



}

