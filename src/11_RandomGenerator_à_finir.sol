// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import "@chainlink/contracts/src/V0.8/VRFConsumerBase.sol";


abstract contract  RandomGenerator  is VRFConsumerBase  {

    bytes32 public reqId;
    uint256 public randomNumber;

    constructor (address _vrfCoordinator, address _link) VRFConsumerBase(_vrfCoordinator, _link)  {
    }

    function fulfillRandomness(bytes32 requestId, uint256 randomness) internal override {
        reqId = requestId;
        randomNumber = randomness;
    }
}