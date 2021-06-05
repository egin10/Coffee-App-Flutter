import 'package:coffee_app/constants.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar({required bool isHome, GestureTapCallback? backTapPress}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: (isHome)
        ? IconButton(
            icon: Icon(Icons.center_focus_strong_outlined),
            color: Colors.white,
            // iconSize: 30,
            onPressed: () {
              print("List onPressed!");
            },
          )
        : GestureDetector(
            onTap: backTapPress,
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.chevron_left_outlined),
            ),
          ),
    actions: [
      (isHome)
          ? IconButton(
              icon: Icon(Icons.search_rounded),
              color: Colors.white,
              // iconSize: 30,
              onPressed: () {
                print("Search onPressed!");
              },
            )
          : SizedBox(),
      (isHome)
          ? IconButton(
              icon: Icon(Icons.shopping_cart_rounded),
              color: Colors.white,
              // iconSize: 30,
              onPressed: () {
                print("Shopping Cart onPressed!");
              },
            )
          : Container(
              margin: EdgeInsets.all(10),
              width: 37,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.shopping_cart_rounded,
                size: 20,
              ),
            ),
    ],
  );
}
