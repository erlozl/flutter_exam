import 'package:flutter/material.dart';
import 'package:nectar_app/components/common_button.dart';
import 'package:nectar_app/components/common_form_field.dart';
import 'package:nectar_app/components/common_title.dart';
import 'package:nectar_app/components/custom_Login_form.dart';
import 'package:nectar_app/components/custom_join_form.dart';
import 'package:nectar_app/components/main_image.dart';
import 'package:nectar_app/size.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              children: [
                MainImage(),
                SizedBox(
                  height: small_gap,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomJoinForm(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
