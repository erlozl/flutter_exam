import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/pages/profile_button.dart';
import 'package:profile_app/pages/profile_drawer.dart';
import 'package:profile_app/pages/profile_header.dart';
import 'package:profile_app/pages/profile_tab.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(CupertinoIcons.arrow_left),
        title: Text("Profile"),
        centerTitle: true,
      ),
      endDrawer: ProfileDrawer(),
      body: Column(
        children: [
          ProfileHeader(),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                profileInfo("post", "50"),
                profileInfoLine(),
                profileInfo("likes", "10"),
                profileInfoLine(),
                profileInfo("share", "3"),
              ],
            ),
          ),
          ProfileButton(),
          Expanded(child: ProfileTab()),
        ],
      ),
    );
  }

  // profileInfoLine
  Container profileInfoLine() {
    return Container(
      width: 1,
      height: 60,
      color: Colors.lightBlue,
    );
  }

  // profileInfo-post,likes,share
  SizedBox profileInfo(String title, String count) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 2),
          Text(
            count,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
