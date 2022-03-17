// SPDX-License-Identifier: MIT

// Indicamos la versión
pragma solidity ^0.8.0;

contract tiempo {
    
    // Unidades de tiempo
    uint public tiempo_actual = block.timestamp;
    uint public un_minuto = 1 minutes;
    uint public dos_horas = 2 hours;
    uint public cincuenta_dias = 50 days;
    uint public una_semana = 1 weeks;

    function MasSegundos() public view returns(uint) {
        return block.timestamp + 50 seconds;
    }

    function MasHoras() public view returns(uint) {
        return block.timestamp + 1 hours;
    }

    function MasDias() public view returns(uint) {
        return block.timestamp + 3 days;
    }

    function MasSemanas() public view returns(uint) {
        return block.timestamp + 1 weeks;
    }

}