// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import {Script} from "forge-std/Script.sol";
import {CryptoDevsDAO} from "../src/CryptoDevsDAO.sol";


contract DeployDAO is Script {
    address constant MARKETPLACE = 0xE6e34011b916ce2F150377C148d0053aE045a8B0;
    address constant NFT = 0x91950ca3db93577C8811741044b5bd5d5f800C54;
    function run() external {
        vm.startBroadcast();
        CryptoDevsDAO cryptoDAO = new CryptoDevsDAO{value: 0.1 ether}(MARKETPLACE, NFT);
        vm.stopBroadcast();
    }
}