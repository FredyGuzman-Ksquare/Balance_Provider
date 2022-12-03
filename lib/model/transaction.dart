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
}
