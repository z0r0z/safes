// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.19;

import {Safes} from "../src/Safes.sol";
import {Test} from "../lib/forge-std/src/Test.sol";

contract TesterTest is Test {
    Safes safes;

    address constant gnosisDAO = 0x0DA0C3e52C977Ed3cBc641fF02DD271c3ED55aFe;

    uint256 constant gnosisDAOID = uint256(uint160(gnosisDAO));

    address constant owner0 = 0xE4Df0cdC9eF7e388eA906226010bBD1B9A6fFeD9;

    function setUp() public {
        vm.createSelectFork(vm.rpcUrl("main")); // Ethereum mainnet fork.
        safes = new Safes();
    }

    function testDeploy() public {
        new Safes();
    }

    function testRegister() public {
        safes.register(gnosisDAO);
    }

    function testSafeOwner() public view {
        uint256 bal = safes.balanceOf(owner0, gnosisDAOID);
        assertEq(bal, 1);
    }

    function testNotSafeOwner() public view {
        uint256 bal = safes.balanceOf(address(this), gnosisDAOID);
        assertEq(bal, 0);
    }

    function testSetURI() public {
        assertEq(safes.uri(gnosisDAOID), "");
        vm.prank(owner0);
        safes.setURI(gnosisDAOID, "hello");
        assertEq(safes.uri(gnosisDAOID), "hello");
    }

    function testFailSetURIUnauth() public {
        safes.setURI(gnosisDAOID, "hello");
    }
}
