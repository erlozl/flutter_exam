import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          _buildFollowButton(),
          SizedBox(
            width: 10,
          ),
          _buildMessageButton()
        ],
      ),
    );
  }

  Expanded _buildMessageButton() {
    return Expanded(
      child: InkWell(
        onTap: () {
          print("Message");
        },
        child: Container(
          alignment: Alignment.center,
          width: 150,
          height: 45,
          child: Text(
            "Message",
            style: TextStyle(color: Colors.blue),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.blue,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }

  Expanded _buildFollowButton() {
    return Expanded(
      child: InkWell(
        onTap: () {
          print("Follow");
        },
        child: Container(
          alignment: Alignment.center,
          width: 150,
          height: 45,
          child: Text(
            "Follow",
            style: TextStyle(color: Colors.white),
          ),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
