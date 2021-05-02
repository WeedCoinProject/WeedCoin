// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/Context.sol";
import "./ERC20Deflationary.sol";

contract WeedCoin is Context, ERC20Deflationary {

    string private name_ = "WeedCoin";
    string private symbol_ = "WEED";
    uint8 private decimal_ = 9;
    uint256 private totalSupply_ = 10 ** 15;
    uint8 private taxBurn_ = 10;
    uint8 private taxReward_ = 10;
    uint8 private taxLiquify_ = 10;
    uint256 private minTokensBeforeSwap_ = (10 ** 7) * (10 ** decimal_); 
    address private pancakeswapV2Router = 0x10ED43C718714eb63d5aA57B78B54704E256024E;

    constructor () ERC20Deflationary("WeedCoin", "WEED", 18, totalSupply_) {
        enableAutoBurn(taxBurn_);
        enableReward(taxReward_);
        enableAutoSwapAndLiquify(taxLiquify_, pancakeswapV2Router, minTokensBeforeSwap_);
    }

}