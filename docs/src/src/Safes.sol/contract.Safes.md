# Safes
[Git Source](https://github.com/z0r0z/safes/blob/e093c9b23873cbb839b831481982ef0a1eb9d0ad/src/Safes.sol)

Tokenized ownership singleton for all Safe smart accounts.


## State Variables
### _uri

```solidity
mapping(uint256 id => string metadata) internal _uri;
```


## Functions
### uri


```solidity
function uri(uint256 id) public view returns (string memory);
```

### setURI


```solidity
function setURI(uint256 id, string calldata metadata) public;
```

### balanceOf


```solidity
function balanceOf(address owner, uint256 id) public view returns (uint256);
```

### safeTransferFrom


```solidity
function safeTransferFrom(address from, address to, uint256 id, uint256 amount, bytes calldata data)
    public
    payable;
```

### register


```solidity
function register(address account) public;
```

## Events
### TransferSingle

```solidity
event TransferSingle(
    address indexed owner, address indexed from, address indexed to, uint256 id, uint256 amount
);
```

### URI

```solidity
event URI(string metadata, uint256 indexed id);
```

## Errors
### Unauthorized

```solidity
error Unauthorized();
```

### CallReverted

```solidity
error CallReverted();
```

