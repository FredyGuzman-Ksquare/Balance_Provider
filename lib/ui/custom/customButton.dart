import 'package:flutter/material.dart';

import '../utils/strings.dart';

class CustomButton {
  buttonPadding() {
    return MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.only(top: 10, bottom: 10, right: 50, left: 50));
  }

  AccountButton(_login) {
    return ButtonStyle(
      padding: buttonPadding(),
    );
  }

  customOrangeButton() {
    return ButtonStyle(
      padding: buttonPadding(),
      backgroundColor:
          MaterialStateProperty.all<Color>(const Color(0xffF25723)),
    );
  }

  createButton() {
    return ButtonStyle(
      padding: buttonPadding(),
      backgroundColor:
          MaterialStateProperty.all<Color>(const Color(0xffFFFFFF)),
    );
  }
}
