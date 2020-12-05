pragma solidity =0.7.5;

import "./BurnableToken.sol";

contract LPToken is BurnableToken {
    constructor() {
        _initialize("BTC-LP Test token", "BTC-LP test", 8, 0, true);
    }
}