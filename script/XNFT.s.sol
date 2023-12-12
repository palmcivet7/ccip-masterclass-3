// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "forge-std/Script.sol";
import {XNFT} from "../src/XNFT.sol";

contract DeployXNFT is Script {
    function run() public {
        vm.startBroadcast();

        address ccipRouterAddressEthereumSepolia = 0x0BF3dE8c5D3e8A2B34D2BEeB17ABfCeBaf363A59;
        address linkTokenAddressEthereumSepolia = 0x779877A7B0D9E8603169DdbD7836e478b4624789;
        uint64 chainSelectorEthereumSepolia = 16015286601757825753;

        XNFT xNft = new XNFT(
            ccipRouterAddressEthereumSepolia,
            linkTokenAddressEthereumSepolia,
            chainSelectorEthereumSepolia
        );

        console.log("XNFT deployed to ", address(xNft));

        vm.stopBroadcast();
    }
}
