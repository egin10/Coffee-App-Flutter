import 'package:coffee_app/models/Coffee.dart';
import 'package:coffee_app/screens/home/components/coffee_card.dart';
import 'package:coffee_app/size_config.dart';
import 'package:flutter/material.dart';

class BestCoffees extends StatelessWidget {
  const BestCoffees({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            coffees.length,
            (index) => Padding(
              padding: EdgeInsets.only(left: SizeConfig.screenWidth! * 0.05),
              child: CoffeeCard(
                isBestCoffee: true,
                coffee: coffees[index],
                press: () {
                  print("Love ${coffees[0].name}");
                },
              ),
            ),
          ),
          SizedBox(
            width: SizeConfig.screenWidth! * 0.05,
          )
        ],
      ),
    );
  }
}
