import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nectar_app/components/common_button_subText.dart';
import 'package:nectar_app/pages/join_page.dart';
import 'package:nectar_app/size.dart';

class CommonButton extends StatelessWidget {
  String buttonText;
  String buttonCont;
  String linkText;

  CommonButton(this.buttonText, this.buttonCont, this.linkText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: small_gap,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "$buttonText",
            style: TextStyle(fontSize: 20),
          ),
        ),
        CommonButtonSubText(buttonCont: buttonCont, linkText: linkText),
      ],
    );
  }
}
