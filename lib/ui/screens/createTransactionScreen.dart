import 'dart:math';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:balance/ui/custom/customText.dart';
import '../../controller/balanceProvider.dart';
import '../../controller/formController.dart';
import '../../model/transaction.dart';
import '../custom/customButton.dart';
import '../utils/strings.dart';
import '../utils/theme.dart';

enum Valor { income, expense }

class createTransactionScreen extends StatefulWidget {
  const createTransactionScreen({Key? key}) : super(key: key);

  @override
  State<createTransactionScreen> createState() =>
      _createTransactionScreenState();
}

class _createTransactionScreenState extends State<createTransactionScreen> {
  final TextEditingController _titleCtrl = TextEditingController();
  final TextEditingController _amountCtrl = TextEditingController();
  final TextEditingController _descCtrl = TextEditingController();
  Valor? _valor = Valor.income;
  bool isIncome = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(Strings.income, style: CustomTheme.inexp),
                    leading: Radio<Valor>(
                      //key: const Key('listTileIncome'),
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => CustomTheme.primaryColor),
                      focusColor: MaterialStateColor.resolveWith(
                          (states) => CustomTheme.secondaryColor),
                      value: Valor.income,
                      groupValue: _valor,
                      onChanged: (Valor? value) {
                        setState(() {
                          _valor = value;
                          isIncome = true;
                          print(isIncome);
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(Strings.expense, style: CustomTheme.inexp),
                    leading: Radio<Valor>(
                      key: const Key('listTileExpense'),
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => CustomTheme.secondaryColor),
                      focusColor: MaterialStateColor.resolveWith(
                          (states) => CustomTheme.primaryColor),
                      value: Valor.expense,
                      groupValue: _valor,
                      onChanged: (Valor? value) {
                        setState(() {
                          _valor = value;
                          isIncome = false;
                          print(isIncome);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              key: const Key('titleTextField'),
              controller: _titleCtrl,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: Strings.title,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              key: const Key('amountTextField'),
              controller: _amountCtrl,
              keyboardType: TextInputType.number,
              inputFormatters: [LengthLimitingTextInputFormatter(5)],
              decoration: InputDecoration(
                labelText: Strings.amount,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              key: const Key('descTextField'),
              controller: _descCtrl,
              keyboardType: TextInputType.text,
              maxLines: 2,
              decoration: InputDecoration(
                labelText: Strings.description,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              key: const Key('submitButton'),
              onPressed: () {
                if (FormController()
                    .validateEmptyText(_titleCtrl, _amountCtrl, _descCtrl)) {
                  Provider.of<BalanceProvider>(
                    context,
                    listen: false,
                  ).addTransaction(
                      isIncome,
                      _titleCtrl.text,
                      int.parse(_amountCtrl.text),
                      _descCtrl.text,
                      DateTime.now());
                  clearText();
                  Navigator.pop(context);
                }
              },
              child: const Text(Strings.submit),
            )
          ],
        ),
      ),
    );
  }

  void clearText() {
    _titleCtrl.clear();
    _amountCtrl.clear();
    _descCtrl.clear();
  }
}
