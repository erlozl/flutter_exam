import 'package:flutter/material.dart';
import 'package:login_app/components/custom_text_form_field.dart';
import 'package:login_app/size.dart';
import 'package:login_app/user_repository.dart';
import 'package:login_app/validator_util.dart';

// Validation체크하고 싶으면 이 문법을 사용해
class CustomLoginForm extends StatelessWidget {
  // *tip
  final int num = 10; // readonly 메모리 영역
  final num2 = 20; // 이걸 많이 사용 - readonly면서 var임
//  여기서 final은 var과 함께 들고 있기 때문에 int생략 가능

  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // stateless 위젯은 거의 다 final임 왜냐면 정적이기 때문에
  //var를 대신해도 됨
  final _formKey = GlobalKey<FormState>();

  final _email = TextEditingController();
  final _password = TextEditingController();

  CustomLoginForm();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        // 유효성 검사할 준비 끝 ( form의 정보를 다 가지고 있음 )
        child: Column(
          // input데이터 submit할 때 사용
          children: [
            CustomTextFormField(
              text: "Email",
              validate: validateEmail(),
              textController: _email,
            ),
            SizedBox(
              height: large_gap,
            ),
            CustomTextFormField(
              text: "Password",
              isPassword: true,
              validate: validatePassword(),
              textController: _password,
            ),
            // form자체의 디자인을 하려면 decoration을 사용해야 함
            SizedBox(
              height: large_gap,
            ),
            TextButton(
              // form태그 안에 들어가면 submit버튼임
              onPressed: () {
                // formKey가 연결되지 않으면 cureentState가 null이다.
                if (_formKey.currentState!.validate()) {
                  // validate라는 메서드가 실해될 때
                  // 각각의 customTextFormField안에 있는 form태그가 발동함
                  // validator가 null을 리턴하면 true가 됨
                  // true가 되면서 페이지 이동

                  UserRepository repo = UserRepository();
                  repo.login(_email.text.trim(), _password.text.trim());
                  Navigator.pushNamed(context, "/home");
                  // Navigator.pop(context); 앱이 꺼짐
                }
              },
              child: Text("Login"),
            )
          ],
        ));
  }
}
