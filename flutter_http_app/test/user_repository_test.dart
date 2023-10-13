import 'package:dio/dio.dart';
import 'package:flutter_http_app/model/user.dart';

final dio = Dio();
void main() async {
  await fetchUser_test(1);
}

//리턴하고 싶으면 Future에 타입 붙여주면 됨
Future<User> fetchUser_test(int id) async {
  Response<dynamic> response =
      await dio.get("http://192.168.0.43:8000/user/$id");

  print(response.data);

  Map<String, dynamic> body = response.data as Map<String, dynamic>;
  print(body["username"]);

  User user = User.fromJson(body);
  print(user);
  return user;
}
