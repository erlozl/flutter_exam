import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/avatar.png"),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "GeinThere",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "프로그래머/작가/강사",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "데어 프로그래밍",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
