// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract SampleNFT is ERC721 {

  /**************************************
   * ERC-721 Setup Methods for Testing
   **************************************/

   using Counters for Counters.Counter;
   Counters.Counter private _tokenIdCounter;

  //pass through constructor, remove?
  constructor(string memory name, string memory symbol)
        ERC721(name, symbol)
    {}

  /// wrapper on minting new 721
  function mint721(address _to) external returns(uint256) {
    // _mint(_to, allTokens.length + 1);
    // return allTokens.length;
    uint256 tokenId = _tokenIdCounter.current();
    _tokenIdCounter.increment();
    _mint(_to, tokenId);
    return tokenId;
  }

}