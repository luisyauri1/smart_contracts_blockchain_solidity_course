// SPDX-License-Identifier: MIT

// Indicamos la versión
pragma solidity ^0.8.0;

contract Comida {

    struct plato {
        string nombre;
        string ingredientes;
        uint tiempo;
    }

    // Declarar un array dinamico de platos
    plato[] platos;
    
    // Relacionamos con un mampping el nombre del plato con sus ingredientes
    mapping(string => string) ingredientes;

    // Función que nos permite dar de alta u nuevo plato
    function NuevoPlato(string memory _nombre, string memory _ingredientes, uint _tiempo) internal{
        platos.push(plato(_nombre, _ingredientes, _tiempo));
        ingredientes[_nombre] = _ingredientes;
    }

    function Ingredientes(string memory _nombre) internal view returns(string memory){
        return ingredientes[_nombre];
    }
}

contract Sandwitich is Comida {
    function SandwitichOnly(string memory _ingredientes, uint _tiempo) external {
        NuevoPlato("Sandwitch", _ingredientes, _tiempo);
    }

    function VerIngredientes() external view returns(string memory){
        return Ingredientes("Sandwitch");
    }
}