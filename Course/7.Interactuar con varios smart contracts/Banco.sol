// SPDX-License-Identifier: MIT

// Indicamos la versión
pragma solidity ^0.8.0;

contract Banco {

    // Definimos un tipo de dato complejo cliente
    struct cliente{
        string _nombre;
        address direccion;
        uint dinero;
    }

    // mapping que nos relaciona el nombre del cleinte con el tipo de dato cliente
    mapping (string => cliente) clientes;

    // Función que nos permita dar de alta a un nuevo cliente
    function nuevoCliente(string memory _nombre) public {
        clientes[_nombre] = cliente(_nombre, msg.sender, 0);
    }
}