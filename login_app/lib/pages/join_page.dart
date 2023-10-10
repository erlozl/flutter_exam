import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/components/custom_join_form.dart';
import 'package:login_app/components/custom_login_form.dart';
import 'package:login_app/components/custom_text_form_field.dart';
import 'package:login_app/components/logo.dart';
import 'package:login_app/size.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      // 밑에 있는 것을 가려버림
      // defult가 true임 -
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // 앱의 전체 디폴트 패딩값 = 16
        child: ListView(
          // inset 영역 때문에
          children: [
            SizedBox(
              height: xlarge_gap,
            ),
            Logo("join"),
            CustomjoinForm(),
          ],
        ),
      ),
    );
  }
}
