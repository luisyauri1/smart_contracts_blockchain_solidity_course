// SPDX-License-Identifier: MIT

// Indicamos la versión
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract sentencia_if {
    //Numero ganador 

    function probarSuerte(uint _numero) public pure returns(bool) {
        bool ganador;
        if(_numero == 100){
            ganador=true;
        } else {
            ganador = false;
        }
        return ganador;
    }

    // Devolver true si el numero introducio es par y tiene tres cifras
    function parTresCifras(uint _numero) public pure returns(bool) {
        bool flag;
        if((_numero%2==0) && (_numero>=100) && (_numero<999)) {
            flag = true;
        } else {
            flag = false;
        }
        return flag;
    }

    // Votación
    // Solo hay tres canidatos: Luis, Brandom y Cris
    function votar(string memory _candidato) public pure returns(string memory){
        string memory mensaje;
        if(keccak256(abi.encodePacked(_candidato))==keccak256(abi.encodePacked("Brandom"))){
            mensaje = "Has votado correctamente a Brandom";
        } else {
            if(keccak256(abi.encodePacked(_candidato))==keccak256(abi.encodePacked("Luis"))){
                mensaje = "Has votado correctamente Luis";
            } else {
                if(keccak256(abi.encodePacked(_candidato))==keccak256(abi.encodePacked("Cris"))){
                    mensaje = "Has votado correctamente a Cris";
                } else {
                    mensaje = "Has votado a un candidato que no esta en la lista";
                }
            }
        }

        return mensaje;
    }
}