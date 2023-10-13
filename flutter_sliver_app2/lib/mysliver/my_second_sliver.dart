import 'package:flutter/material.dart';

class MySecondSliver extends StatelessWidget {
  const MySecondSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // 일반 타입이 아니라 찢어진 조각들이 들어와야 함
        SliverToBoxAdapter(
          child: Container(
            height: 500,
            color: Colors.orange,
          ),
        ),
//          일반 위젯으로 sliver위젯으로 치환시켜주는 것, 즉 타입일치
//         일반 위젯을 넣고 싶으면 SliverToBoxAdapter를 사용 하면 됨
//           SliverList > 가변적
//         SliverFixedExtentList.list(children: children, itemExtent: itemExtent,) 가변적X
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 5,
            (context, index) => Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                height: 100,
                color: Colors.green,
                child: Text("$index"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
