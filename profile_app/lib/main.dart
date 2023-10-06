import 'package:flutter/material.dart';
import 'package:profile_app/pages/profile_page.dart';
import 'package:profile_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 테마 색상 먼저 바꾸기
      theme: theme(),
      home: ProfilePage(),
    );
  }
}
