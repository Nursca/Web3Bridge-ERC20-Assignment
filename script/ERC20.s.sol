// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {ERC20} from "../src/ERC20.sol";

contract ERC20Script is Script {
    ERC20 public erc20;
    uint256 tokenTotalSupply = 10000 * 1e18;
    string tokenName = "DeFiNursca";
    string tokenSymbol = "DFN";

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        erc20 = new ERC20(tokenName, tokenSymbol, tokenTotalSupply);

        vm.stopBroadcast();
    }
}
