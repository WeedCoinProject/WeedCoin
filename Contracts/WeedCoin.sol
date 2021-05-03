// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/Context.sol";
import "./ERC20Deflationary.sol";

contract WeedCoin is Context, ERC20Deflationary {

    string private name_ = "WeedCoin";
    string private symbol_ = "WEED";
    uint8 private decimal_ = 9;
    uint256 private tokenSupply_ = 420 * (10 ** 12) + 69;
    uint8 private taxBurn_ = 2;
    uint8 private taxReward_ = 3;
    uint8 private taxLiquify_ = 5;
    uint8 private taxDecimals_ = 0;
    uint256 private minTokensBeforeSwap_ = (10 ** 7) * (10 ** decimal_);
    address private routerAddress = 0x10ED43C718714eb63d5aA57B78B54704E256024E;
    
    constructor() ERC20Deflationary(name_, symbol_, decimal_, tokenSupply_) {
        enableAutoBurn(taxBurn_, taxDecimals_);
        enableReward(taxReward_, taxDecimals_);
        enableAutoSwapAndLiquify(taxLiquify_, taxDecimals_, routerAddress, minTokensBeforeSwap_);
    }

}