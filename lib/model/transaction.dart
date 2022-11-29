class Transaction {
  bool isIncome;
  String? title;
  int amount;
  String? description;
  DateTime? createdAt;

  Transaction(
      {this.isIncome = true,
      this.title,
      this.amount = 1000,
      this.description,
      this.createdAt});

  @override
  String toString() {
    String tType = isIncome ? "Income" : "Expense";
    return "$tType :\tTitle: $title \tAmount: $amount \tDescription: $description \tCreated at: $createdAt";
  }

  int calculateBalance(List<Transaction> transactions) {
    int balance = 0;
    for (int i = 0; i < transactions.length; i++) {
      print("${i + 1}: " + transactions[i].toString());
      transactions[i].isIncome
          ? balance += transactions[i].amount
          : balance -= transactions[i].amount;
      print("Balance: $balance");
    }
    return balance;
  }
}
