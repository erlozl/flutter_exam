import 'package:dio/dio.dart';

/// More examples see https://github.com/cfug/dio/blob/main/example
final dio = Dio();

void main() async {
  await getHttp();
}
// future의 데이터가 꽉 찼는지 기다림

Future<void> getHttp() async {
  final response = await dio.get('https://pub.dev');
// await - 캡쳐링됨
//   await 멈춰서 빠져나가는 게 아니라 통신 실행시키고
//   실행결과가 아직 안 나와서
//   response에서 future박스 받음

  print("1");
  print(response.data);
  print("2");
}
// print가 실행이 안되는 이유 - 메인 종료 ( 비동기 )

// void main() {
//   getHttp();
// }
//
// void getHttp()  {
//   final response =  dio.get('https://pub.dev');
//   print("1");
//   print(response);
//   print("2");
// }
//  동기적으로 실행하면 future박스는 내용이 없음
