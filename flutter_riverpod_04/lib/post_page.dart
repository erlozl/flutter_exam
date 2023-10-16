import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_04/post_view_model.dart';
import 'package:flutter_riverpod_04/session_provider.dart';

// 버튼 눌리면 사진 변경되는 거
class PostPage extends ConsumerWidget {
  PostPage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("빌드됨");

    PostModel? model = ref.watch(postProvider);

    if (model == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Scaffold(
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.network(
                "https://picsum.photos/id/50/200/300",
                fit: BoxFit.cover,
              ),
            ),
            // ElevatedButton(onPressed: () {}, child: Text("사진변경")),
            Text(
                "id : ${model.id}, userId : ${model.userId}, title : ${model.title}"),
            ElevatedButton(
              onPressed: () {
                ref.read(postProvider.notifier).change();
                // 리빌드, 그림을 다시 그려줌
              },
              child: Text("값 변경"),
            ),
            ElevatedButton(
              onPressed: () {
                SessionUser sessionUser = ref.read(sessionProvider);
                sessionUser.isLogin = true;
              },
              child: Text("로그인"),
            ),
          ],
        ),
      );
    }
  }
}
