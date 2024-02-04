// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Licence {
    string private applicantName;
    uint private applicantAge;
    bool private hasLicense = false;
    bool private applicantFlagged = false;

    event LicenseEnrolled(string name, uint age);
    event LicenseRenewed();
    event LicenseRevoked(address revokedAddress);

    modifier requireAge(uint _age) {
        require(_age >= 18, "Must be 18 or older to apply");
        _;
    }

    modifier isLicensed {
        if (!hasLicense) revert("Driver hasn't been licensed");
        _;
    }

    function EnrollApplicant(string memory _name, uint _age) public requireAge(_age){
        assert(!hasLicense);

        applicantName = _name;
        applicantAge = _age;
        hasLicense = true;
        emit LicenseEnrolled(_name, _age);
    }

    function renew() public {
        if (applicantFlagged || !hasLicense) revert("Driver is flagged or hasn't been licensed");
        emit LicenseRenewed();
    }

    function checkLicense() public view returns (bool) {
        return hasLicense;
    }

    function revoke() public isLicensed {
        hasLicense = false;
        emit LicenseRevoked(msg.sender);
    }

    function flagApplicant() public isLicensed {
        applicantFlagged= true;
    }

    function unFlagApplicant() public isLicensed {
        applicantFlagged= false;
    }
}