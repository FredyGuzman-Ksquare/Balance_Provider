import 'package:flutter/material.dart';

import '../screens/createTransactionScreen.dart';
import '../screens/homeScreen.dart';

class RouterGenerator {
  var routerGenerate = ((settings) {
    var routeName = settings.name;

    switch (routeName) {
      case '/':
        return MaterialPageRoute(
            builder: (context) => SafeArea(child: HomeScreen()));

      case '/add':
        return MaterialPageRoute(
            builder: (context) => SafeArea(child: createTransactionScreen()));
    }
    //return null;
  });
}
