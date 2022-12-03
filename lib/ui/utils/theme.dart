import 'package:flutter/material.dart';

class CustomTheme {
  static Color primaryColor = const Color.fromRGBO(86, 179, 143, 1);
  getPrimaryColor() {
    return primaryColor;
  }

  static Color secondaryColor = const Color.fromRGBO(193, 84, 106, 1);
  getSecondaryColor() {
    return secondaryColor;
  }

  static const balance = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white);
  static const money = TextStyle(
      fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.white);
  static const inexp = TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(86, 179, 143, 1));

  static const title = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.black);
  static const time = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w300,
      color: Color.fromARGB(255, 70, 70, 70));
  static const message = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );
  static const noSend = TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(193, 84, 106, 1));

  static isInEx(bool isIncome) {
    return TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: isIncome == true
            ? const Color.fromRGBO(86, 179, 143, 1)
            : const Color.fromRGBO(193, 84, 106, 1));
  }

  static dialogBack(bool isIncome) {
    return isIncome == true
        ? const Color.fromRGBO(187, 218, 206, 0.7)
        : const Color.fromRGBO(220, 186, 193, 0.7);
  }

  var theme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color.fromRGBO(245, 245, 245, 1),
    backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(backgroundColor: primaryColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        minimumSize: const Size.fromHeight(52),
        textStyle: const TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryColor,
        backgroundColor: Colors.white,
        padding: const EdgeInsets.fromLTRB(40, 12, 40, 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      alignLabelWithHint: true,
      hintStyle:
          TextStyle(fontSize: 12, color: Color.fromRGBO(193, 84, 106, 1)),
      labelStyle:
          TextStyle(fontSize: 18, color: Color.fromRGBO(204, 204, 204, 1)),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(204, 204, 204, 1)),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      filled: true,
      fillColor: Colors.white,
    ),
    dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0))),
    ),
  );
}
