import 'package:flutter_http_app/model/user.dart';

void main() {
  // 1. User 객체 만들기
  User user1 =
      User(id: 1, username: "ssar", password: "1234", email: "ssar@nate.com");

  print(user1.username);

  // 2. User Map 타입 만들기
  Map<String, dynamic> u2 = {
    "id": 2,
    "username": "cos",
    "password": "1234",
    "email": "cos@nate.com",
  };
  print(u2["username"]);

  // 3. map -> object 변환( 수신 send )
  User u3 = User.fromJson(u2);
  print(u3.username);
  // 통신으로 들어오는 것은 json인데 다트에서는 맵으로 받아서 json으로 바꿔줌
  // : 통신으로 다운 받을 때임

  // 4. object -> map 라이브러리가 map에서 json으로 바꿔줌 ( 송신 receive )
  Map<String, dynamic> u4 = u3.toJson();
  print(u4);
}
