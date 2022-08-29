// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Registration {

    struct station{
        string name;
        string street; // address of the charging station
        uint256 nsc; // number of slow charger
        uint256 nfc; // number of fast charger
        uint index;

    }

    station[] public stations;
    mapping (uint256 => address) public stationToOwner;

    function registerItem(string memory _name, string memory _street, uint256 _nsc, uint256 _nfc) public{
        uint256 _index = stations.length;
        stations.push(station(_name, _street, _nsc, _nfc, _index));
        stationToOwner[_index] = msg.sender;
    }

    function registeredStation() public view returns(station[] memory){
        return stations;
    }

    function returnStation(uint _index) public view returns(station memory){
        return stations[_index];
    }

}
