// SPDX-License-Identifier: MIT

// Indicamos la versión
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract public_private_internal {
    // Modificador public 
    uint public mi_entero = 45;
    string public mi_string = "Luis";
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Modificador private
    uint private mi_entero_privado = 10;
    bool private flag = true;

    function test(uint _k) public {
        mi_entero_privado = _k;
    }

    // Modificador internal
    bytes32 internal hash = keccak256(abi.encodePacked("Hola"));
    address internal direccion = 0x17F6AD8Ef982297579C203069C1DbfFE4348c372;

}