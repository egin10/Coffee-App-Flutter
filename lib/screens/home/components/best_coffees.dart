import 'package:coffee_app/models/Coffee.dart';
import 'package:coffee_app/screens/detail/detail_screen.dart';
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
            bestCoffees.length,
            (index) => Padding(
              padding: EdgeInsets.only(left: SizeConfig.screenWidth! * 0.05),
              child: CoffeeCard(
                isBestCoffee: true,
                coffee: bestCoffees[index],
                favPress: () {
                  print("Love ${bestCoffees[index].name}");
                },
                cardPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailScreen(coffee: bestCoffees[index])));
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
