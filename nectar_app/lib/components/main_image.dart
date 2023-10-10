import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  const MainImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      width: 120,
      height: 120,
      image: AssetImage("assets/images/carret.png"),
    );
  }
}
