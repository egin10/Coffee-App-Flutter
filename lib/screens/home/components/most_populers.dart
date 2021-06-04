import 'package:coffee_app/models/Coffee.dart';
import 'package:coffee_app/screens/home/components/coffee_card.dart';
import 'package:coffee_app/size_config.dart';
import 'package:flutter/material.dart';

class MostPopulers extends StatelessWidget {
  const MostPopulers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mostPopulerCoffees = coffees..shuffle();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            mostPopulerCoffees.length,
            (index) => Padding(
              padding: EdgeInsets.only(left: SizeConfig.screenWidth! * 0.05),
              child: CoffeeCard(
                coffee: mostPopulerCoffees[index],
                press: () {
                  print("Love ${mostPopulerCoffees[0].name}");
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
