// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract EMTToken is ERC20("Elf Matrix Token", "EMT"), Ownable {
    constructor(address beneficiary) {
        require(
            beneficiary != address(0),
            "beneficiary cannot be the 0 address"
        );
        uint256 supply = 300000000 ether;
        _mint(beneficiary, supply);
    }

    function getOwner() external view returns (address) {
        return owner();
    }
}