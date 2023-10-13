// Model  서버로부터 받을 데이터 타입을 정의
// (서버 측 테이블과 동일하게 만들면 됨)
// 필요할 수도 있고 안 필요할 수도 있지만 - User Class랑 똑같이 만들면 됨
// Entity , 맵으로 받아서 컨벌팅
//서버측에서 보내는 건 DTO, 맵으로 받아서 Dynamic으로 설정해서 받아버림?
// 즉, 서버측에 테이블에 대한 엔티티가 있으면 그거와 동일한 모델을 만들면 된다

// getter,setter 필요없움

class User {
  int? id;
  String? username;
  String? password;
  String? email;

  User({this.id, this.username, this.password, this.email});

//  정확하게 말하면 fromMap임 - Map을 받는 거라서
  User.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    username = json["username"];
    password = json["password"];
    email = json["email"];
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "username": username,
      "password": password,
      "email": email,
    };
  }
}
