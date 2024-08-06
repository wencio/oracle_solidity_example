//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import './IOracle.sol';


contract Consumer {
    IOracle public oracle;
    constructor (IOracle _oracle) {
        oracle = _oracle;
    }

    function foo() external view {
        bytes32 key = keccak256(abi.encodePacked('BTC/USD'));
        (bool result, uint date, uint payload) = oracle.getData(key);
        require(result == true, 'could not get price');
        require( date >= block.timestamp - 2 minutes, 'price too old');
        // do something with the price 


   
    }




}
