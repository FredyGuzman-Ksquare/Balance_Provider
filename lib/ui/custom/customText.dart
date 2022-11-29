import 'package:flutter/material.dart';

import '../utils/strings.dart';

class CustomText {
  defaultWhiteText(String text) {
    return Text(text,
        style: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500));
  }

  balanceText(balance) {
    return Text(balance,
        style: const TextStyle(
            color: Colors.white, fontSize: 28, fontWeight: FontWeight.w700));
  }

  createText() {
    return Text(Strings.create,
        style: const TextStyle(
            color: Color.fromARGB(255, 85, 179, 143),
            fontSize: 18,
            fontWeight: FontWeight.w700));
  }

  noDataText() {
    return Text(Strings.noData,
        style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 18,
            fontWeight: FontWeight.w400));
  }
}
