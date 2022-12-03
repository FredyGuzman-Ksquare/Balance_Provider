import 'package:flutter/material.dart';

import '../utils/theme.dart';

class TransactionCard extends StatelessWidget {
  String title;
  String createdAt;
  bool isIncome;
  num amount;

  TransactionCard({
    super.key,
    required this.title,
    required this.amount,
    required this.isIncome,
    required this.createdAt,
  });

  @override
  Widget build(BuildContext context) {
    String isIncom;
    Color color;
    if (isIncome) {
      isIncom = "+$amount";
      color = CustomTheme().getPrimaryColor();
    } else {
      isIncom = "-$amount";
      color = CustomTheme().getSecondaryColor();
    }
    return Container(
      height: 100,
      color: const Color(0xfff4f4f4),
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 200,
            margin: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  createdAt,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: Text(
              isIncom,
              style: TextStyle(fontSize: 18, color: color),
            ),
          )
        ],
      ),
    );
  }
}
