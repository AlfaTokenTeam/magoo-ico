pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract MAGOO is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function MAGOO(address _owner)  UpgradeableToken(_owner) {
    name = "MAGOO";
    symbol = "MAGOO";
    totalSupply = 100000000;
    decimals = 2;

    balances[_owner] = totalSupply;
  }
}