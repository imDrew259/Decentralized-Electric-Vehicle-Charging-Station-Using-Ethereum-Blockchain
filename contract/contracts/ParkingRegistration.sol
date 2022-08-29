// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract ParkingRegistration {

    struct parkingStation{
        string name;
        string street; // address of the parking station
        uint256 nlp; // number of large parking
        uint256 nsp; // number of small parking
        uint index;

    }

    parkingStation[] public parkingStations;
    mapping (uint256 => address) public parkingStationToOwner;

    function registerParkingItem(string memory _name, string memory _street, uint256 _nlp, uint256 _nsp) public{
        uint256 _index = parkingStations.length;
        parkingStations.push(parkingStation(_name, _street, _nlp, _nsp, _index));
        parkingStationToOwner[_index] = msg.sender;
    }

    function registeredParkingStation() public view returns(parkingStation[] memory){
        return parkingStations;
    }

    function returnParkingStation(uint _index) public view returns(parkingStation memory){
        return parkingStations[_index];
    }

}
