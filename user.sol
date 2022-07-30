// SPDX-License-Identifier: MIT
pragma solidity ^0.4.19;

contract profile {
    uint256 idDigits = 6;

    struct Patient {
        uint256 rollno;
        uint256 pin;
        string name;
        string branch;
        string email;
        string bio;
        string profile_link0;
        string profile_link1;
        string profile_link2;
        string profile_link3;
    }

    Patient[] public patients;

    //This is adding the user to the DAPP
    function addUser(
        uint256 rollno,
        uint256 memory pin,
        string memory name,
        string memory branch,
        string memory email,
        string memory bio,
        string memory profile_link0,
        string memory profile_link1,
        string memory profile_link2,
        string memory profile_link3,
    ) public {
        Patient memory p = Patient(
            rollno,
            pin,
            branch,
            email,
            bio,
            name,
            profile_link0,
            profile_link1,
            profile_link2,
            profile_link3;
        );
        patients.push(p);
    }

    //This gets the data as soon as nfc is successfully scanned
    function getuser(uint256 rollno, uint256 pin)
        public
        view
        returns (
            uint256 memory,
            string memory,
            string memory,
            string memory,
            string memory,
            string memory,
            string memory,
            string memory,
            string memory
        )
    {   
        if (p.pin == pin){
            for (uint256 i = 0; i <= patients.length; i++) {
                Patient memory p = patients[i];
                if (p.rollno == rollno) {
                    return (
                        p.name,
                        p.branch,
                        p.email,
                        p.bio,
                        p.profile_link0,
                        p.profile_link1,
                        p.profile_link2,
                        p.profile_link3
                    );
                }
            }
        }
        return (
            "Not found",
            "Not found",
            "Not found",
            "Not found",
            "Not found",
            "Not found",
            "Not found",
            "Not found"
        );
    }
}
