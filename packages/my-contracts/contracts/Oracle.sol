//SPDX-License-Identifier: Unlicense
pragma solidity ^0.6.11;

import "hardhat/console.sol";
import "arb-bridge-peripherals/contracts/tokenbridge/ethereum/gateway/L1GatewayRouter.sol";
import "arbos-contracts/arbos/builtin/ArbSys.sol";

contract Oracle {
  address router;

  constructor(address _router) public {
    router = _router;
  }

  function queryOracle(address l1Token) external returns (address l2Token) {
    l2Token = L1GatewayRouter(router).calculateL2TokenAddress(l1Token);
    console.log("L2 token address:", l2Token);
  }
}
