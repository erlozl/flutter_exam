import 'package:flutter/material.dart';

class SliverListGrid extends StatelessWidget {
  const SliverListGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              child: Container(
                color: Colors.blue[index % 9 * 100],
                child: Center(
                  child: Text("Grid item $index"),
                ),
                // index 변수는 Flutter 또는 Dart 프로그래밍 언어에서
                // 자주 사용되는 일반적인 변수 이름 중 하나
              ),
            );
          }, childCount: 20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.0),
        ),
      ],
    );
  }
}
