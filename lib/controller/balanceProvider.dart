import 'package:flutter/material.dart';
import 'package:balance/model/transaction.dart';

class BalanceProvider extends ChangeNotifier {
  num balance = 0;
  List<Transaction> transactions = [];

  void addTransaction(isIncome, title, amount, description, createdTime) {
    Transaction transaction = Transaction(
        title: title,
        description: description,
        amount: amount,
        isIncome: isIncome,
        createdAt: DateTime.now());
    transactions.add(transaction);
    notifyListeners();
  }

  get transactionCount => transactions.length;

  num getBalanceAcount() {
    balance = 0;
    for (var t in transactions) {
      t.isIncome ? balance += t.amount : balance -= t.amount;
    }
    return balance;
  }
}
