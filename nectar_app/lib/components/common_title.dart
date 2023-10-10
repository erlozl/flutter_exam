import 'package:flutter/material.dart';
import 'package:nectar_app/size.dart';

class CommonTitle extends StatelessWidget {
  String title;
  String text;
  CommonTitle(this.title, this.text);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: large_gap,
          ),
          Text(
            "$title",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "$text",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black45,
            ),
          ),
          SizedBox(
            height: xlarge_gap,
          ),
        ],
      ),
    );
  }
}
