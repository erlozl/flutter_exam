import 'package:flutter/material.dart';
import 'package:login_app/pages/home_page.dart';
import 'package:login_app/pages/join_page.dart';
import 'package:login_app/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildThemeData(),
      initialRoute: "/home",
      // 이렇게 하면 첫 페이지가 home임
      routes: {
        "/login": (context) => LoginPage(),
        "/join": (context) => JoinPage(),
        "/home": (context) => HomePage(),
      },
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            minimumSize: Size(double.infinity, 60)),
      ),
    );
  }
}
