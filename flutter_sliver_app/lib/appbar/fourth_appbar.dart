import 'package:flutter/material.dart';

class fourth_appbar extends StatelessWidget {
  const fourth_appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Around"),
        ),
        body: PageView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Image.network(
              "https://picsum.photos/id/${index + 50}/200/300",
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
