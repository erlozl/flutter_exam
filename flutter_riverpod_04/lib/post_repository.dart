import 'package:dio/dio.dart';
import 'package:flutter_riverpod_04/post_view_model.dart';

// 3
class PostRepository {
  Dio dio = Dio();
  //  메서드 통일 - 컨벤션으로 fetch 붙이기

  Future<PostModel> fetchPost(int id) async {
    // 1. 통신
    final response =
        await dio.get("https://jsonplaceholder.typicode.com/posts/${id}");

    // 2. 파싱
    PostModel postModel = PostModel.fromJson(response.data);

    // 3. 리턴
    return postModel;
  }

  // Repository에는 통신코드만 생각해보자
}
