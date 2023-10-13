import 'package:flutter/material.dart';

class Thirdappbar extends StatelessWidget {
  const Thirdappbar({
    super.key,
  });

  //글을 넣고 싶다면 이 방식
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://picsum.photos/id/${index + 50}/200/300",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text("Around"),
              leading: Icon(Icons.menu),
            ),
            body: Center(
              child: Text("Page $index"),
            ),
          ),
//          컨테이너 안에 뼈대 설계
//          이 형태로 만들면 좋은 점
//          => 바디를 만들 수 있다
        );
      },
    );
  }
}
