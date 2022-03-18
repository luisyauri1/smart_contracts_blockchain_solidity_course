// SPDX-License-Identifier: MIT

// Indicamos la versión
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract funciones{

    // Añadir dentro de un array de direcciones, la dirección de la persona que llame a la función
    address[] public direcciones;

    function nuevaDireccion() public{
        direcciones.push(msg.sender);
    }

    // Computar el hash de los datos proporcionados como parametro
    bytes32 public hash;

    function Hash(string memory _datos) public {
        hash = keccak256(abi.encodePacked(_datos));
    }

    // Declaramos un tipo de dato complejo, que es comida
    struct comida {
        string nombre;
        string ingredientes;
    }

    // Vamos a crear un tipo de dato complejo comida
    comida public hamburguesa;

    function Hamburguesas(string memory _ingredientes) public {
        hamburguesa = comida("hamburguesa", _ingredientes);
    }

    // Declaramos un tipo de dato complejo, alumno
    struct alumno{
        string nombre;
        address direccion;
        uint edad;
    }

    bytes32 public hash_Id_alumno;

    // Calculamos el hash del alumno
    function hashIdAlumno(string memory _nombre, address _direccion, uint _edad) private{
        hash_Id_alumno = keccak256(abi.encodePacked(_nombre, _direccion, _edad));
    }

    // Guardamos con la funcion publica dentro de una lista de los alumnos
    alumno[] public lista;
    mapping (string => bytes32) alumnos;

    function nuevoAlumno(string memory _nombre, uint _edad) public {
        lista.push(alumno(_nombre, msg.sender, _edad));
        hashIdAlumno(_nombre, msg.sender, _edad);
        alumnos[_nombre] = hash_Id_alumno;
    }


    
}