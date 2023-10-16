import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_04/post_repository.dart';
import 'package:flutter_riverpod_04/session_provider.dart';
//세션 값 저장할 때 provider 사용함
// ㅡ> user정보같은 거 저장할 때

// 1. 창고 데이터 ( model )
class PostModel {
  int id;
  int userId;
  String title;

  PostModel(
    this.id,
    this.userId,
    this.title,
  );

  // Spring ㅡ> flutter
  PostModel.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        userId = json["userId"],
        title = json["title"];
}

// 2. 창고 ( view model )는 서비스랑 비슷함, MVVM패턴
class PostViewModel extends StateNotifier<PostModel?> {
  // 부모 상태의 값을 무조건 초기화 시켜줘야 함
  // 생성자를 통해 상태를 부모에게 전달
  PostViewModel(super.state, this.ref);
  //  자바로 치면
  //  POstViewModel(PostModel model) {
  //    super(model);
  //  }

  Ref ref;
  // 상태 프로바이더를 읽거나 상태 변경 메서드를 호출하는 등의 작업을 수행

  // 상태 초기화 - 반드시 있어야 함 !!!필수!!!
  void init() async {
    // 통신 코드
    PostModel postModel = await PostRepository().fetchPost(40);
    // await 안하면 null 들어온다
    // 무조건 await와 async 해주어서 다 기다려야 함!!

    state = postModel; // 값이 있는 postmodel로 바뀜
  }

  // 상태 변경, 로그인 상태에 따라 분기시킬 수 있음
  // (로그인 했을 때? 로그인 안했을 때?)
  void change() async {
    SessionUser sessionUser = ref.read(sessionProvider);

    if (sessionUser.isLogin) {
      // 통신 코드
      // ref 없으면 접근 X
      PostModel postModel = await PostRepository().fetchPost(50);
      state = postModel;
    }
  }
}

// 3. 창고 관리자 ( provider )
final postProvider =
    StateNotifierProvider.autoDispose<PostViewModel, PostModel?>((ref) {
  // autoDispose => utoDispose"라는 기능을 활용하여 상태 변화를
  // 감시하고 관련된 리소스(예: 리소스의 생명 주기)를 자동으로 처리하는 방식으로 동
  // 메모리 관리 자동으로 해줌, request.attribute같은 것
  return PostViewModel(null, ref)..init();
});

// 여기까지 항상 똑같다!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// provider에 접근하면 창고에 접근하는거다
