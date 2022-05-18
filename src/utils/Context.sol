// SPDX-License-Identifier: ChaingeFinance
pragma solidity ^0.8.13;


abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}