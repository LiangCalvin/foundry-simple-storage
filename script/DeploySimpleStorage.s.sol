// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        // 1. เริ่มบันทึกธุรกรรม (สิทธิ์จะมาจาก Private Key ที่เราใส่ในตอนรัน command)
        vm.startBroadcast();

        // 2. สร้าง Instance ของ Contract จริงๆ บน Blockchain
        SimpleStorage simpleStorage = new SimpleStorage();

        // 3. หยุดบันทึกธุรกรรม
        vm.stopBroadcast();

        return simpleStorage;
    }
}
