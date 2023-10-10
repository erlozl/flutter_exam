import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nectar_app/components/main_image.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 3000), () {
      Navigator.pushNamed(context, "/login");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainImage(),
                _buildMainTitle(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMainTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "nectar",
          style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.white),
        ),
        Text(
          "online market",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
            letterSpacing: 4,
          ),
        )
      ],
    );
  }
}
