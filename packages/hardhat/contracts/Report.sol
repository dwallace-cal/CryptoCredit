// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
 

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";

contract CryptoCredit is ERC721, Pausable, Ownable, ERC721Burnable {
    constructor() ERC721("CryptoCredit", "REPORT") {}



    function _baseURI() internal pure override returns (string memory) {
        return "https://ipfs.io/ipfs/QmVDPLebXizYJ7sTdabd1hJoLZMQF8L4YxJwm4Ay57nHPS";
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function safeMint(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId)
        internal
        whenNotPaused
        override
    {
        super._beforeTokenTransfer(from, to, tokenId);
    }
}