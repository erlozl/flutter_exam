import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingcart_app/color.dart';

class ShoppingPopUp extends StatelessWidget {
  const ShoppingPopUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (context) => CupertinoAlertDialog(
                title: Text("장바구니에 담으시겠습니까"),
                actions: [
                  CupertinoDialogAction(
                    child: Text("확인"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
          },
          style: TextButton.styleFrom(
              backgroundColor: kAccenctColor,
              minimumSize: Size(300, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),
          child: Text(
            "Add to cart",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
