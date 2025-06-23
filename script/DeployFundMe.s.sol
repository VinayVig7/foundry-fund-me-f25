// SPDX-license-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployFundMe is Script {
    function run() external returns (FundMe) {
        //Before startBroadcast -> Not a real transaction
        HelperConfig helperConfig = new HelperConfig();
        address ethUsdPriceFeed = helperConfig.activeNetworkConfig(); // Note that there is only one item in structure so we dont need () parenthesis.
        //In Solidity, declaring a public struct automatically creates a getter function, but — and here's the key detail: That getter returns a tuple of the struct’s elements, not the struct itself. Since NetworkConfig only has one element, address priceFeed, the compiler creates this getter automatically:

        //After startBroadcast -> A real transaction
        vm.startBroadcast();
        FundMe fundMe = new FundMe(ethUsdPriceFeed);
        vm.stopBroadcast();
        return fundMe;
    }
}
