// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProjectDonation {
//- a user can create as many projects as he wishes
//- a project is identified by an id and characterized by a title and a description.
//- a user can donate only once to a particular project by sending ETH.
//- we save at the level of the smart contract the list of 'Donors' as well as the amounts they have sent.
//- when a donation is made the FULL amount send by a donor is directly sent to the projet owner address.

    struct  Project  {
        uint id;
        string title;
        string description;
        address payable  owner;
        uint amount;
        address[] listofDonners;
        

    }

     Project[] public projects;
     uint public projectCount;
     mapping (address=>uint) public DonnorsAmount;
     mapping(address => bool) public hasDonate;
     mapping (uint=>Project)public MapProjectId;

     constructor(){
        projectCount=0;
     }
    
    
    
     
   function   creatProject(string   memory  _title ,string  memory  _description ) public  payable {
         address[] memory emptyList;
         uint id=projects.length;

         Project memory projectNew=Project(id,_title,_description,payable(msg.sender),0  ,emptyList);
         projects.push(projectNew);
         MapProjectId[id] = projectNew;
         projectCount++;

       
    }


    function donate(uint _id) public payable {
    require(!hasDonate[msg.sender], "You have donated before");
    require(_id < projectCount, "The project is not in the list of projects");
    require(msg.value > 0, "You should donate >0 amount");
    Project storage p = MapProjectId[_id]; 
    p.owner.transfer(msg.value);
    p.listofDonners.push(msg.sender);
    DonnorsAmount[msg.sender] = msg.value;
    hasDonate[msg.sender] = true;
    }

    function listDonnters(uint _id) public payable returns ( address[] memory ,uint) {
        Project storage p=MapProjectId[_id];
        return p.listofDonners;
        
    }

    

    function checkElement(address element) public view returns (bool) {
    return hasDonate[element];
   }

    




    



}