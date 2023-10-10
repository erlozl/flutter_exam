import 'package:flutter/material.dart';
import 'package:shoppingcart_app/color.dart';

const MaterialColor primaryWrite = MaterialColor(
  _writePrimaryValue,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);
const int _writePrimaryValue = 0xFFFFFFFF;

ThemeData theme() {
  return ThemeData(
    primarySwatch: primaryWrite,
    scaffoldBackgroundColor: kPrimaryColor,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black87),
    ),
  );
}
