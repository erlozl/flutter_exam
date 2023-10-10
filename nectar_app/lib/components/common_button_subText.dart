import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nectar_app/pages/join_page.dart';

class CommonButtonSubText extends StatelessWidget {
  const CommonButtonSubText({
    super.key,
    required this.buttonCont,
    required this.linkText,
  });

  final String buttonCont;
  final String linkText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "$buttonCont",
        style: TextStyle(fontSize: 16, color: Colors.black87),
        children: [
          TextSpan(
            text: "$linkText",
            style: TextStyle(color: Colors.green),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // "Sign up"을 눌렀을 때 화면을 이동하는 코드
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return JoinPage(); // JoinPage로 이동
                    },
                  ),
                );
              },
          ),
        ],
      ),
    );
  }
}
