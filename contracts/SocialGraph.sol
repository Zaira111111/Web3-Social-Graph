// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Web3SocialGraph {
    struct Profile {
        string handle;
        string metadataURI; // IPFS link for bio/image
        uint256 followerCount;
    }

    mapping(address => Profile) public profiles;
    mapping(address => mapping(address => bool)) public followers;

    event ProfileCreated(address indexed user, string handle);
    event Followed(address indexed follower, address indexed followed);

    function createProfile(string memory _handle, string memory _uri) public {
        profiles[msg.sender] = Profile(_handle, _uri, 0);
        emit ProfileCreated(msg.sender, _handle);
    }

    function follow(address _toFollow) public {
        require(!followers[msg.sender][_toFollow], "Already following");
        followers[msg.sender][_toFollow] = true;
        profiles[_toFollow].followerCount++;
        emit Followed(msg.sender, _toFollow);
    }
}
