import 'dart:math';

import 'package:flutter/material.dart';
import 'package:balance/ui/custom/customText.dart';
import '../../model/transaction.dart';
import '../custom/customButton.dart';
import '../utils/strings.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(title: Text("Sexo"), actions: []),
      body: Center(
        child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  color: Color.fromARGB(255, 85, 179, 143),
                  height: queryData.size.height * .40,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomText().defaultWhiteText(Strings.balance),
                      CustomText().balanceText("\$ 500 USD"),
                      ElevatedButton(
                        onPressed: () {},
                        child: CustomText().createText(),
                        style: CustomButton().createButton(),
                      )
                    ],
                  ),
                ),
                Container(
                  height: queryData.size.height * .48,
                  width: double.infinity,
                  color: Color.fromARGB(255, 249, 248, 244),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText().noDataText(),
                    ],
                  ),
                ),
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("height: ${queryData.size.height}");
          print("height: ${queryData.size.height * .45}");
          print("height: ${queryData.size.height * .45}");
          print("width: ${queryData.size.width}");
          Transaction t = createTransaction();
          print(t.toString());
          print(Transaction().calculateBalance(createRandomTransactions()));
        },
        backgroundColor: const Color(0xfff25723),
        child: const Icon(Icons.access_time),
      ),
    );
  }

  Transaction createTransaction() {
    int r = Random().nextInt(2);
    print(r);

    Transaction t = Transaction(
        isIncome: (r == 0) ? true : false,
        title: (r == 0) ? "Salary" : "Rent",
        amount: 500,
        description: "Lorem Ipsum",
        createdAt: DateTime.now());
    return t;
  }

  List<Transaction> createRandomTransactions() {
    List<Transaction> transactions = [];
    for (int i = 0; i < 10; i++) {
      transactions.add(createTransaction());
    }
    return transactions;
  }
}
