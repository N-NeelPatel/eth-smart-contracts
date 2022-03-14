// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;


contract Store {
    uint256 number;
    
    function store(uint256 _num) public {
        number = _num;
    }

    struct People {
        uint256 num;
        string name;
    }

    People[] public people; // to check its values
    mapping(string => uint256) public nametoNumber;

    function addPerson(string memory _name, uint256 _num) public {
        people.push(People(_num, _name));
        nametoNumber[_name] = _num;
    }

    function retrieve() view public returns(uint256) {
        return number;
    }
} 
