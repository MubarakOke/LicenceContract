# Project Title

License Contract

## Description

This Solidity smart contract for very simple driver's licensing system. It allows erolling individuals for a license with specific user details, with user meeting the minimum age requirement (18 years old). License renewal and revocation are implemented. The contract leverages various features:

    - Modifiers: The requireAge ensures user age is greater than 18 and isLicensed checks if the user has licesed already.
    - Events: The contract emits events (LicenseEnrolled, LicenseRenewed, and LicenseRevoked) upon specific actions, facilitating easier tracking and monitoring.
    - private variables: to make accessing only from the declaring contracts.

The Contracts used three handling method which includes require, revert and assert, for handling errors

## Getting Started

### Executing program

For ease in executing the smart contract, 
the can be copied and use in remix environment to 
interact with different functions in the contract

## Help

Any advise for common problems or issues.
```
command to run if program contains helper info
```

## Authors

Contributors names and contact info

ex. Okeola Mubarak  
ex. [@DomPizzie](https://twitter.com/mubie_X)


## License

This project is licensed under the MIT License 
