import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.center_focus_strong_outlined),
      color: Colors.white,
      onPressed: () {
        print("List onPressed!");
      },
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.search_rounded),
        color: Colors.white,
        onPressed: () {
          print("Search onPressed!");
        },
      ),
      IconButton(
        icon: Icon(Icons.shopping_cart_rounded),
        color: Colors.white,
        onPressed: () {
          print("Shopping Cart onPressed!");
        },
      ),
    ],
  );
}