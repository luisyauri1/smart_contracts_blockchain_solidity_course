// SPDX-License-Identifier: MIT

// Indicamos la versión
pragma solidity ^0.8.0;
import "./SafeMath.sol";

contract calculosSeguros {

    /// Debemos declarar para que tipo de datos usaremos la libería
    using SafeMath for uint;

    // Función suma segura
    function suma(uint _a, uint _b) public pure returns(uint){
        return _a.add(_b);
    }

    // Función resta
    function resta(uint _a, uint _b) public pure returns(uint){
        return _a.sub(_b);
    }

    // Función multiplicacion
    function multiplicacion(uint _a, uint _b) public pure returns(uint){
        return _a.mul(_b);
    }



}