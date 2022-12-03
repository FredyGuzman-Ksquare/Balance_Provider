import 'package:flutter/cupertino.dart';

class FormController {
  validateEmptyText(TextEditingController titleCtrl,
      TextEditingController amountCtrl, TextEditingController descCtrl) {
    if (titleCtrl.text.isNotEmpty &&
        descCtrl.text.isNotEmpty &&
        amountCtrl.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
