// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "./utils/Context.sol";
import "./ERC20Deflationary.sol";

contract ExampleToken is Context, ERC20Deflationary {

    string name_ = "ExampleToken";
    string symbol_ = "EXT";
    uint8 decimal_ = 9;
    uint256 totalSupply_ = 100;
    uint8 taxFee_ = 10;

    constructor () ERC20Deflationary(name_, symbol_, decimal_, totalSupply_) {
        enableAutoBurn(taxFee_);
        enableReward(taxFee_);
        //enableAutoSwapAndLiquify(10, routerAddress, 10 * 10**9);
    }

}