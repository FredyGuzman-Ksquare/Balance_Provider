import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/balanceProvider.dart';
import '../custom/customButton.dart';
import '../custom/customText.dart';
import '../screens/createTransactionScreen.dart';
import '../utils/strings.dart';
import '../utils/theme.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomText().defaultWhiteText(Strings.balance),
        CustomText().balanceText(
            "\$ ${Provider.of<BalanceProvider>(context).getBalanceAcount().toString()} USD"),
        SizedBox(
          width: 200,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const createTransactionScreen(),
                ),
              );
            },
            child: CustomText().createText(),
            style: CustomButton().createButton(),
          ),
        )
      ],
    );
  }
}
