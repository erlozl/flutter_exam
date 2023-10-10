import 'package:flutter/material.dart';
import 'package:nectar_app/components/common_button.dart';
import 'package:nectar_app/components/common_form_field.dart';
import 'package:nectar_app/components/common_title.dart';
import 'package:nectar_app/size.dart';
import 'package:nectar_app/validator_util.dart';

class CustomLoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final _email = TextEditingController();
  final _password = TextEditingController();
  CustomLoginForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CommonTitle("Loging", "Enter your emails and password"),
          CommonFormField(
            formTitle: "Email",
            validate: validateEmail(),
            textController: _email,
          ),
          SizedBox(
            height: large_gap,
          ),
          CommonFormField(
            formTitle: "password",
            isPassword: true,
            validate: validatePassword(),
            textController: _password,
          ),
          SizedBox(
            height: small_gap,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Forgot Password?",
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: large_gap,
          ),
          CommonButton("Log In", "Don't have an account ? ", "Sign up"),
        ],
      ),
    );
  }
}
