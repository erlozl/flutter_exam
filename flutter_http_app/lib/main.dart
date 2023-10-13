import 'package:flutter/material.dart';
import 'package:flutter_http_app/model/user.dart';
import 'package:flutter_http_app/repository/user_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserListPage(),
    );
  }
}

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 폰으로는 부화가 많이 걸리기 때문에 싱글톤으로 관리해야함
    UserRepository ur = UserRepository();
    List<User> userList = ur.fetchUserList();
    // 실제 통신을 하게 되면 null?

    // await가 되면 기다리고 있기 때문에 흰색 화면이 나옴
    // 그냥 화면 자체가 안 그려진다는 얘김
    // 그렇기 때문에 따로 빼놓아야 함

    // return 되기 직전 ( 빌드 되기 직전)
    return Scaffold(
      body: FutureBuilder<List<User>>(
        future: UserRepository().fetchUserList(),
        // 이 함수의 결과값이 snapshot으로 들어감
        builder: (context, snapshot) {
          // future에 데이터가 찰 때까지 기다렸다가
          // 실행됨 , 4번이 될지 5번이 될지 모름

          print("그 림 그려짐");

          if (snapshot.hasData) {
            List<User> userList = snapshot.data ?? [];

            // 통신이 끝남
            return ListView.builder(
              itemCount: userList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  // int 타입은 문자열에 바인딩이 안되기 때문에
                  //   ${}쓰는게 좋다
                  leading: Text("${userList[index].id}"),
                  title: Text("${userList[index].username}"),
                  subtitle: Text("${userList[index].email}"),
                );
              },
            );
          } else {
            // 통신 중인 상태
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
