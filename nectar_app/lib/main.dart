import 'package:flutter/material.dart';
import 'package:nectar_app/pages/index_page.dart';
import 'package:nectar_app/pages/join_page.dart';
import 'package:nectar_app/pages/login_page.dart';
import 'package:nectar_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      initialRoute: "/index",
      routes: {
        "/index": (context) => IndexPage(),
        "/login": (context) => LoginPage(),
        "/join": (context) => JoinPage(),
      },
    );
  }
}
