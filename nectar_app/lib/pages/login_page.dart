import 'package:flutter/material.dart';
import 'package:nectar_app/components/common_button.dart';
import 'package:nectar_app/components/custom_Login_form.dart';
import 'package:nectar_app/components/common_form_field.dart';
import 'package:nectar_app/components/common_title.dart';
import 'package:nectar_app/components/main_image.dart';
import 'package:nectar_app/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color(0xffade89d),
                      Color(0xffd1eacf),
                      Color(0xFFFFFFFF),
                    ],
                  ),
                ),
                child: MainImage(),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomLoginForm(),
              )
            ],
          )
        ],
      ),
    );
  }
}
