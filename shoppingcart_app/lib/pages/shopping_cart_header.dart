import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingcart_app/color.dart';

class ShoppingCartHeader extends StatefulWidget {
  const ShoppingCartHeader({
    super.key,
  });

  @override
  State<ShoppingCartHeader> createState() => _ShoppingCartHeaderState();
}

class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
  int selectedId = 0;

  List<String> selectedPic = [
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeaderPic(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildHeaderSelector(0, Icons.directions_bike),
            _buildHeaderSelector(1, Icons.motorcycle),
            _buildHeaderSelector(2, CupertinoIcons.car_detailed),
            _buildHeaderSelector(3, CupertinoIcons.airplane),
          ],
        ),
      ],
    );
  }

  Widget _buildHeaderPic() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 1.5 / 1,
        child: Image.asset(
          selectedPic[selectedId],
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildHeaderSelector(int id, IconData mIcon) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: id == selectedId ? kAccenctColor : kSecondaryColor,
      ),
      child: IconButton(
        icon: Icon(mIcon, color: Colors.black87),
        onPressed: () {
          setState(() {
            selectedId = id;
          });
        },
      ),
    );
  }
}
