// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "../lib/forge-std/src/Script.sol";
import {GoodGreed} from "../src/GoodGreed.sol";

contract DeployGoodGreed is Script {
    function run() external returns(GoodGreed) {
        vm.startBroadcast();
        GoodGreed goodGreed = new GoodGreed();
        vm.stopBroadcast();
        return goodGreed;
    }
}