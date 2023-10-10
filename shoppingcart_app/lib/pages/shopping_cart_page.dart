import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingcart_app/color.dart';
import 'package:shoppingcart_app/components/shopping_color_option.dart';
import 'package:shoppingcart_app/components/shopping_popup.dart';
import 'package:shoppingcart_app/components/shopping_review_count.dart';
import 'package:shoppingcart_app/components/shopping_title_and_price.dart';
import 'package:shoppingcart_app/pages/shopping_cart_header.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                children: [
                  ShoppingTitleAndPrice(),
                  ShoppingReviewCount(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Color Options",
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ShoppingColorOption(Colors.black),
                              ShoppingColorOption(Colors.green),
                              ShoppingColorOption(Colors.orange),
                              ShoppingColorOption(Colors.grey),
                              ShoppingColorOption(Colors.white),
                            ],
                          ),
                        ),
                        ShoppingPopUp()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // appbar
  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0.2,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart,
          ),
        )
      ],
    );
  }
}
