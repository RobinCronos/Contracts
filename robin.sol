// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./ICRC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract CRC20 is ICRC20, ERC20Upgradeable, OwnableUpgradeable {
    function initialize(
        address _owner,
        string memory _name,
        string memory _symbol,
        uint256 _totalSupply
    ) public override initializer {
        __ERC20_init(_name, _symbol);
        _mint(_owner, _totalSupply);
        _transferOwnership(_owner);
    }
}
