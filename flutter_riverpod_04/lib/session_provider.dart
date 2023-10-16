import 'package:flutter_riverpod/flutter_riverpod.dart';

// 창고 데이터

//파일 이름을 provider를 쓴 것을 전역에 다 쓰는 걸로 정하기
//전역적인 데이터 관리 용도 - provider, view랑 상관없음
class SessionUser {
  bool isLogin;

  SessionUser({this.isLogin = false});
}

// 창고
//  상태 변경이 없기 때문에 창고는 필요가 없다

// 창고 관리자
final sessionProvider = Provider<SessionUser>((ref) {
  return SessionUser();
});
