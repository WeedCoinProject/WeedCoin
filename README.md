# WeedCoin
From the community, for the community.

## What is WeedCoin?
WeedCoin is an [ERC20](https://eips.ethereum.org/EIPS/eip-20) token that is deflationary by design. 

## WEED Tokenomics

Reward holders,auto burn, and locked liquidity pool acquisition. 

Total supply: 420,000,000,000,069 at the time of deployment.

### Coin Allocation
55% enters the exchange liquitity pool. <br/>
25% reserved for airdrop. <br/>
10% reserved for IFO on PancakeSwap. <br/>
10% user acquisition.

### Transaction Taxes
* a% of each transaction will be automatically 





## 

** Reward, reflect, and distribute are used interchangeably in code comments.

An ERC20 Token that charges a + b + c % of transaction fees. 
- a% of a transaction will be automatically add to the liquidity pool and be locked.
- b% of a transaction will be redistribute(reflect) to all holders. 
- c% of a transaction will be burnt.


Currently supports static reward (automatically redistribute b% of each transactions) and burn c% of transactions.

Feel free to submit an issue or pull request :)


## How to use:

Clone this git repo and import ERC20Deflationary.sol

Example:

```
pragma solidity ^0.8.4;

import "./ERC20Deflationary.sol";

contract TestCoin is ERC20Deflationary {
    constructor() ERC20Deflationary("TestCoin", "TEST", 9, 100) {
         // default is 0
         // not required
         setTaxBurn(a);
         setTaxReward(b);
         setTaxLiquidity(c);
    }
}
```

## How to run test:

In the terminal

```
truffle test
```
