// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {ERC20} from "../lib/ERC20.sol";
import {Owned} from "../lib/Owned.sol";

contract Token is ERC20, Owned {
    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) ERC20(_name, _symbol, _decimals) Owned(msg.sender) {}
}
