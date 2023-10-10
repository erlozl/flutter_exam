import 'package:flutter/material.dart';
import 'package:login_app/components/custom_text_form_field.dart';
import 'package:login_app/size.dart';
import 'package:login_app/user_repository.dart';
import 'package:login_app/validator_util.dart';

// Validation 체크하고 싶으면 이 문법을 사용해
class CustomjoinForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  CustomjoinForm();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextFormField(
              text: "username",
              validate: validateUsername(),
              textController: _username,
            ),
            SizedBox(
              height: large_gap,
            ),
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
            SizedBox(
              height: large_gap,
            ),
            TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  UserRepository repo = UserRepository();
                  repo.login(_email.text.trim(), _password.text.trim());
                  Navigator.pushNamed(context, "/login");
                }
              },
              child: Text("join"),
            )
          ],
        ));
  }
}
