pragma solidity ^0.8.0;
contract Project
{
    struct Donatee{

        string name;
        string message;
        address donateeAddress;
       
    }


    
    /*modifier OnlyDonatee {
        require(
            donatee == msg.sender,
            "You are not allowed to perform this action"
        );
        _; 
    }*/

    
    
    Donatee[] public donateeList;
    
    function _donateeDetails (string memory name, string memory message ) public /*OnlyDonatee*/{
         Donatee memory z;
            z.name= name;
            z.message= message;
            z.donateeAddress = msg.sender;
            donateeList.push(z);
            
            
    }
        
    function getListOfDonatees() public view returns (Donatee[] memory) {
        return donateeList;
    }
    


    uint256 public threshold;
    uint256 max;
    address[] accounts; 
      address donatee;
      address donor;
      address charitableorg;

    /*modifier OnlyCharitableOrg{
        require(
            charitableorg == msg.sender,
            "You are not allowed to perform this action"
        );
        _; 
    }*/

    
    struct Donor{
        address donorAddress;
    }
   /* modifier OnlyDonor {
        require(
            donor == msg.sender,
            "You are not allowed to perform this action"
        );
        _;
    } */
    

    uint256 private balance;

    // set threshold for any transaction
    function setThreshold(uint256 _threshold) public /*OnlyCharitableOrg*/{
        threshold = _threshold;
    }

    
    event AboveTheThreshold(
        string message,
        address donorAddress,
        uint256 amount
        );
    
    function donate(uint256 amount) public payable /*OnlyDonor*/{
             if (msg.value > 0) {
                  if (msg.value > threshold){
                      // emitted when a donation value > threshold
            emit AboveTheThreshold(
                "Your donation amount is above the threshold! ",
                msg.sender,
                msg.value
            );
        } else (balance += msg.value);
             }
            
    } 
           
// Defining a constructor   
     constructor() public{   
        max = 50 ether;
        threshold = 10 ether;

    }

      struct CharitableOrg{
        address charitableAddress;
    }  

    }


