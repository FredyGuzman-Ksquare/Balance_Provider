import 'package:balance/ui/screens/createTransactionScreen.dart';
import 'package:balance/ui/screens/homeScreen.dart';
import 'package:balance/ui/utils/routerGenerator.dart';
import 'package:balance/ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/balanceProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BalanceProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: CustomTheme().theme,
        home: HomeScreen(),
        initialRoute: '/',
        onGenerateRoute: RouterGenerator().routerGenerate,
      ),
    );
  }
}
