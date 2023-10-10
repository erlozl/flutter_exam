import 'package:flutter/material.dart';
import 'package:nectar_app/components/common_button.dart';
import 'package:nectar_app/components/common_form_field.dart';
import 'package:nectar_app/components/common_title.dart';
import 'package:nectar_app/size.dart';
import 'package:nectar_app/validator_util.dart';

class CustomJoinForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  CustomJoinForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CommonTitle("Sign Up", "Enter your credentioals to continue"),
          CommonFormField(
            formTitle: "Username",
            validate: validateEmail(),
            textController: _username,
          ),
          SizedBox(
            height: large_gap,
          ),
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
          RichText(
            text: TextSpan(
              text: "By continuing you agree to our ",
              style: TextStyle(fontSize: 16, color: Colors.black45),
              children: [
                TextSpan(
                  text: "Terms of Service ",
                  style: TextStyle(color: Colors.green),
                ),
                TextSpan(
                  text: "and ",
                  style: TextStyle(color: Colors.black45),
                ),
                TextSpan(
                  text: "Privacy Policy.",
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
          SizedBox(
            height: large_gap,
          ),
          CommonButton("Sign Up", "Already have an account ", "Log In"),
        ],
      ),
    );
  }
}
