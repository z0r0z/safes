# Safes
[Git Source](https://github.com/z0r0z/safes/blob/23ee6262690b9ef9cb8b3d6a210d9860dad3f352/src/Safes.sol)

Tokenized ownership of Safes.


## State Variables
### name

```solidity
string public constant name = "Safes";
```


### symbol

```solidity
string public constant symbol = unicode"🗝️";
```


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

