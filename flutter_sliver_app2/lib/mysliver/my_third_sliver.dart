import 'package:flutter/material.dart';

class MyThirdSliver extends StatelessWidget {
  const MyThirdSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          title: Text("SliverAppbar"),
          expandedHeight: 300, // flexible이 사용할 높이
          flexibleSpace: FlexibleSpaceBar(
            // 이걸로 해야 appbar의 색상이 자연스럽게 바뀜
            background: Image.network(
              "https://picsum.photos/200/300",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 500,
            color: Colors.orange,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 5,
            (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Container(
                height: 100,
                color: Colors.green,
                child: Text("item $index"),
              ),
            ),
          ),
        ),
        // 수평 스크롤 가능한 ListView
        SliverToBoxAdapter(
          child: SizedBox(
            height: 150, // ListView의 높이 설정
            child: ListView.builder(
              scrollDirection: Axis.horizontal, // 수평 스크롤 설정
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    width: 100,
                    color: Colors.redAccent,
                    alignment: Alignment.center,
                    child: Text("Horizontal Item $index"),
                  ),
                );
              },
            ),
          ),
        ),
        // ex) 광고할 때 등, 화면 전체를 이미지가 다 차지할 때 사용
        SliverFillViewport(
          delegate: SliverChildBuilderDelegate(
            childCount: 5,
            (context, index) {
              return Card(
                child: Container(
                  child: Text("Fill ViewPort Item $index"),
                  color: Colors.cyan,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
