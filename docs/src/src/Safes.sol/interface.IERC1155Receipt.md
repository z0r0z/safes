# IERC1155Receipt
[Git Source](https://github.com/z0r0z/safes/blob/e093c9b23873cbb839b831481982ef0a1eb9d0ad/src/Safes.sol)

Simple interface for ERC1155 token receipts.


## Functions
### onERC1155Received


```solidity
function onERC1155Received(address, address, uint256, uint256, bytes calldata)
    external
    payable
    returns (bytes4);
```

