// SPDX-License-Identifier: MIT
pragma solidity ^0.6.7;

import "../strategy-solar-farm-base.sol";

contract StrategySolarMovrLp is StrategySolarFarmBase {
    uint256 public usdc_movr_poolId = 6;

    // Token addresses
    address public usdc_movr_lp = 0xe537f70a8b62204832B8Ba91940B77d3f79AEb81;

    constructor(
        address _governance,
        address _strategist,
        address _controller,
        address _timelock
    )
        public
        StrategySolarFarmBase(
            usdc,
            movr,
            usdc_movr_poolId,
            usdc_movr_lp,
            _governance,
            _strategist,
            _controller,
            _timelock
        )
    {
        uniswapRoutes[movr] = [usdc, movr];
    }

    // **** Views ****

    function getName() external pure override returns (string memory) {
        return "StrategySolarMovrLp";
    }
}
