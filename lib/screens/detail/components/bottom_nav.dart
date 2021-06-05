import 'package:coffee_app/constants.dart';
import 'package:coffee_app/size_config.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  BottomNav({required this.price});

  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight! * .12,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        border: Border.all(color: Colors.grey, width: .4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              print("Price onPressed!");
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              decoration: BoxDecoration(
                color: kContainerColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Text(
                    "\$$price",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    width: 1,
                    height: 14,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              print("Order Now onPressed!");
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Order Now",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
