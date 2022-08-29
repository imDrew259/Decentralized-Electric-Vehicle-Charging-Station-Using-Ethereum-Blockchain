// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "./Registration.sol";
import "./ParkingRegistration.sol";

contract Index is Registration, ParkingRegistration{

    address public manager;
    uint256 scr;
    uint256 fcr;
    uint256 lpr;
    uint256 spr;

    constructor(uint256 _scr, uint256 _fcr, uint256 _lpr, uint256 _spr){
        manager = msg.sender;
        scr = _scr;
        fcr = _fcr;
        lpr = _lpr;
        spr = _spr;
    }   

    function transfer(address station) public payable{
            payable(station).transfer(msg.value);
        
    }

}