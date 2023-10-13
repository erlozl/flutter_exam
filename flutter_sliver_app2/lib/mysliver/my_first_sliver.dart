import 'package:flutter/material.dart';

class MyFirstSliver extends StatelessWidget {
  const MyFirstSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 500,
          color: Colors.red,
        ),
        SizedBox(
          height: 525,
          // height를 잘못 잡으면 밑에 부분이 안 나옴
          child: ListView.builder(
            // physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  // 이게 동적일 수도 있기 때문에 그걸 계산하기 힘들어서
                  //   자식이 그걸 감싸서 height를 정해줘야 함
                ),
              );
            },
          ),
        ),
        // Container(
        //   height: 500,
        //   // double.infinity를 쓰면 높이 제한이 없어서
        //   // 어디까지 그려야 되나 싶어서 오류터짐
        //   color: Colors.blue,
        // ),
      ],
    );
  }
}
