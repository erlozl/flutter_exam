import 'package:flutter/material.dart';

class SecondAppbar extends StatelessWidget {
  const SecondAppbar({
    super.key,
  });

  // 글자를 안 넣고 싶다면 이 방식
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 아이템 개수만큼 무언가를 해주는 애구나 - builder
      // appBar: AppBar(), 그냥 이거 쓰지 말기
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // 바디 영역이 없기 때문에 글을 못 넣음
            expandedHeight: MediaQuery.of(context).size.height,
            // 이 context를 못 찾으면 화면을 못 찾음 - 이 기기 자체에 화면
            // 폰 화면 크기에 맞춰서 유동적으로 바뀜
            leading: Icon(Icons.menu),
            title: Text("Around"),
            flexibleSpace: PageView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Image.network(
                  "https://picsum.photos/id/${index + 50}/200/300",
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
