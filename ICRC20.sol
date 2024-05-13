// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

interface ICRC20 {
    function initialize(
        address _receiver,
        string memory _name,
        string memory _symbol,
        uint256 _totalSupply
    ) external;
}
