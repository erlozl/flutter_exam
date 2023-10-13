import 'package:flutter/material.dart';
import 'package:flutter_sliver_exam/sliver/sliver_list_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliverExam(),
    );
  }
}

class SliverExam extends StatelessWidget {
  const SliverExam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliverListGrid(),
    );
  }
}
