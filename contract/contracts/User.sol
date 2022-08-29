// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract User{
        struct user{
            address add;
            uint256 index;
        }

        user[] public users;
        mapping (uint256 => address) public indexToUser;

        function userRegister() public{
            uint _index = users.length;
            users.push(user(msg.sender, _index));
            indexToUser[_index] = msg.sender;
        }

        function usersList() public view returns(user[] memory){
            return users;
        }



}