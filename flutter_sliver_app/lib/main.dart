import 'package:flutter/material.dart';
import 'package:flutter_sliver_app/appbar/first_appbar.dart';
import 'package:flutter_sliver_app/appbar/fourth_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

//글을 넣고 싶다면 이 방식
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return fourth_appbar();
  }
}
