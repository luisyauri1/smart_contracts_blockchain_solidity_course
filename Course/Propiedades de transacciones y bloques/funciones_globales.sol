// SPDX-License-Identifier: MIT

// Indicamos la versión
pragma solidity ^0.8.0;

contract funciones_globales {
    // Función msg.sender
    function MsgSender() public view returns(address) {
        return msg.sender;
    }

    // Función now
    function Now() public view returns(uint) {
        return block.timestamp;
    }

    // Función block.coinbase
    function BlockCoinbase() public view returns (address) {
        return block.coinbase;
    }

    // Función block.difficulty
    function BlockDifficulty() public view returns(uint) {
        return block.difficulty;
    }

    // Función block.number
    function BlockNumber() public view returns(uint) {
        return block.number;
    }

    // Función msg.sig
    function MsgSig() public pure returns(bytes4) {
        return msg.sig;
    }

    // Función tx.gaspricev
    function txGasPrice() public view returns(uint){
        return tx.gasprice;
    }
}