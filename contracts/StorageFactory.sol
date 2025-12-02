// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // solidity version

import "./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage private simpleStorage;
    SimpleStorage[] public listOfSimpleStorageAddresses;

    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
        listOfSimpleStorageAddresses.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint _newSimpleStorageNumber) public {
        // Address
        // ABI - Application Binary Interface

        SimpleStorage mySimpleStorage = SimpleStorage(listOfSimpleStorageAddresses[_simpleStorageIndex]);
        mySimpleStorage.store(_newSimpleStorageNumber);


    }

    function sfGet(uint _simpleStorageIndex) public view returns(uint256){
        SimpleStorage mySimpleStorage = listOfSimpleStorageAddresses[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}

