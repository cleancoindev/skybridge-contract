pragma solidity >=0.6.0 <0.8.0;

import "./BurnableToken.sol";

contract LPToken is BurnableToken {
    constructor() {
        _initialize("Swingby BTC", "sbBTC", 8, 0, true);
    }
}