import 'package:balance/ui/widgets/transactionCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/balanceProvider.dart';
import '../../model/transaction.dart';
import '../custom/customText.dart';

class TransactionList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<BalanceProvider>(
      builder: (((context, obj, child) {
        List<Transaction> transactions = obj.transactions;
        if (transactions.isNotEmpty) {
          return ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (((context, index) {
              Transaction transaction = transactions[index];
              return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: TransactionCard(
                    title: transaction.title.toString(),
                    createdAt: transaction.createdAt.toString(),
                    isIncome: transaction.isIncome,
                    amount: transaction.amount),
              );
            })),
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText().noDataText(),
            ],
          );
        }
      })),
    );
  }
}
