import 'package:flutter/material.dart';

class ShoppingReviewCount extends StatelessWidget {
  const ShoppingReviewCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Spacer(),
          Text("review"),
          Text(
            "(26)",
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
