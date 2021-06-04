import 'package:coffee_app/screens/home/components/best_coffees.dart';
import 'package:coffee_app/screens/home/components/categories.dart';
import 'package:coffee_app/screens/home/components/most_populers.dart';
import 'package:coffee_app/size_config.dart';
import 'package:flutter/material.dart';

import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          clipBehavior: Clip.none,
          child: Container(
            margin: EdgeInsets.only(top: SizeConfig.screenHeight! * 0.13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: SizeConfig.screenWidth! * 0.05),
                  child: Text(
                    "Best Coffee in Town",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Categories(),
                BestCoffees(),
                SizedBox(height: 25),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: SizeConfig.screenWidth! * 0.05),
                  child: Text(
                    "Most Populer",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                MostPopulers(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
