// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

pragma solidity ^0.8.0;

contract Transactions {

    //仮想通貨の受け渡し（送信者、受信者、量、メッセージ内容、送信時間、キーワード）
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
    }

    //仮想通貨受け渡しのためのデータスキーマをトランザクションとして配列として保持
    TransferStruct[] transactions;

    event Transfer(address from, address receiver, uint amount);

    function addToBlockChain(address payable receiver, uint amount) public {
        transactions.push(TransferStruct(msg.sender, receiver, amount));

        emit Transfer(msg.sender, receiver, amount);
    }
}