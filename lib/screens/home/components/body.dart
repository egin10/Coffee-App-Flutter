import 'package:coffee_app/screens/home/components/best_coffee.dart';
import 'package:flutter/material.dart';

import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        BestCoffee(),
      ],
    );
  }
}
