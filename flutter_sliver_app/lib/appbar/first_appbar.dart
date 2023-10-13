import 'package:flutter/material.dart';

class FirstAppBar extends StatelessWidget {
  const FirstAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      // CustomScrollView안에서는 ListView를 못 쓴다
      slivers: [
        // flexibleSpace영역
        SliverAppBar(
            // snap: true,
            floating: true,
            pinned: false,
            title: Text(
              "AppBar2",
              style: TextStyle(color: Colors.white),
            ),
            expandedHeight: 250,
            flexibleSpace: Container(
              child: Image.network(
                "https://picsum.photos/200/300",
                fit: BoxFit.cover,
              ),
              color: Colors.deepOrangeAccent,
            )
            //FlexibleSpaceBar(
            //  title: Text("Demo"),
            //),
            ),
        SliverAppBar(
          title: Text(
            "AppBar1",
            style: TextStyle(color: Colors.white),
          ),
          pinned: true,
//           AppBar 고정시키는 거
        ),

        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 20,
            (context, index) => ListTile(
              leading: Icon(Icons.person),
              title: Text("$index"),
              trailing: Icon(Icons.account_balance),
            ),
          ),
        ),
      ],
//        위젯을 넣을 수 있음
    );
  } // 실무에서 쓰는 Appbar
}
