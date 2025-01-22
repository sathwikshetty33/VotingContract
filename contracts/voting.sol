// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract voting{
    struct Voter{
        string name;
        uint age;
        uint voterId;
        string gender;
        uint voteCandidateId;
        address voterAddress;
    }
    struct Candidate{
        string name;
        string party;
        uint age;
        string gender;
        uint candidateId;
        address candidateAddress;
        uint votes;
    }
    address eletionCommission;
    address public winner;
    uint nextVoterId=1;
    uint nextCandidateId=1;
    uint startTime;
    uint endTime;
    mapping(uint=> Voter) voterDetails;
    mapping(uint=> Candidate) candidateList;
    bool stopVoting;
    constructor(){
        eletionCommission=msg.sender;
    }
    
}