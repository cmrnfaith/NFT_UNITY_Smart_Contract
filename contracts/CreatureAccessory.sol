// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./ERC1155Tradable.sol";

/**
 * @title CreatureAccessory
 * CreatureAccessory - a contract for Creature Accessory semi-fungible tokens.
 */
contract CreatureAccessory is ERC1155Tradable {
    constructor(address _proxyRegistryAddress)
        ERC1155Tradable(
            "OpenSea Creature Accessory",
            "OSCA",
            "https://nft-hoverboard.herokuapp.com/api/accessory/{id}",
            _proxyRegistryAddress
        ) {}

    function contractURI() public pure returns (string memory) {
        return "https://nft-hoverboard.herokuapp.com/contract/opensea-erc1155";
    }
}
