import 'package:flutter/material.dart';
import 'package:nectar_app/size.dart';

class CommonFormField extends StatelessWidget {
  final validate;
  final textController;
  String formTitle;
  bool isPassword;

  CommonFormField(
      {required this.formTitle,
      required this.validate,
      this.textController,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$formTitle",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black45,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          controller: textController,
          validator: validate,
          obscureText: isPassword,
          decoration: InputDecoration(
              // filled: true,
              // fillColor: Colors.,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
                borderSide: BorderSide(color: Colors.black54),
              ),
              hintText: "$formTitle을 입력해주세요",
              hintStyle: TextStyle(fontSize: 14, color: Colors.black38),
              suffixIcon: Icon(Icons.remove_red_eye_rounded),
              contentPadding: EdgeInsets.all(8.0)),
          focusNode: FocusNode(),
        ),
      ],
    );
  }
}
