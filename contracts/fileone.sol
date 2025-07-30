// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//EVM  stores info/ variables in 6 places- memory( can be modified, calldata(cant be modify) ==> both store ytemporarily storage(by default outside functions)
// data location(memory calldata etc) can only be specified for- array, struct, mapping types only 
//arrays, map, struct
contract fileone{

    //mapping or arrays can only be initialised inside a consttructor/ function;
   // mymap[1]="divya";
    // myarr.push(1);
    // myarr.push(9);
    uint256 [] public myarr;
    mapping(uint256 => string) public mymap;

     constructor() {
        mymap[1]="div";
        myarr.push(34);
    }
//********************************************************************
    struct People {
        uint256 favno;
        string name;
    }
    // People public people1 = People({favno:34, name: "dhoni"});
    // People public people2 = People({favno:2, name: "kohli"});

    //string is basically array of bytes, so memory used for its storage
    People[] public people;
    function addperson(string memory _name, uint256 _favno) public {
        People memory newperson= People({favno:_favno ,name:_name });
        people.push(People(_favno, _name));
        people.push(newperson);
    }
    function retirevestruct()  public view returns(People[] memory){
    return people; //works well
   }

    //******************************************************************
   //array
   uint256[] myarr1;

   function storearr1(uint256 _myarr) public{
    myarr1.push(_myarr);
   }

   function retirevearr1()  public view returns(uint256[] memory){
    return myarr1; //works well
   }

   //*******************************************************************************
   //mapping

   mapping(string nickname => uint256 numm) public nicknametonum;
   function addtomap(string memory _nn, uint256 _numm ) public {
    nicknametonum[_nn]=_numm;
   }

   //we cant return mapping in solidity, but can return value related to a key in a mapping
   function getnumfrommap(string memory _nn) public view returns(uint256){
    return nicknametonum[_nn];
   }

}