import 'dart:math';

import 'package:balance/controller/balanceProvider.dart';
import 'package:balance/ui/screens/createTransactionScreen.dart';
import 'package:balance/ui/widgets/balanceCard.dart';
import 'package:balance/ui/widgets/transactionCard.dart';
import 'package:balance/ui/widgets/transactionlist.dart';
import 'package:flutter/material.dart';
import 'package:balance/ui/custom/customText.dart';
import 'package:provider/provider.dart';
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
      appBar: AppBar(title: Text("Balance"), actions: []),
      body: Center(
        child: Container(
            color: Color.fromARGB(255, 249, 248, 244),
            width: double.infinity,
            child: Center(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      color: Color.fromARGB(255, 85, 179, 143),
                      height: queryData.size.height * .40,
                      width: double.infinity,
                      padding: EdgeInsets.only(top: 40, bottom: 40),
                      child: const BalanceCard(),
                    ),
                    Container(
                        height: queryData.size.height * .48,
                        width: double.infinity,
                        color: Color.fromARGB(255, 249, 248, 244),
                        child: TransactionList()),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
