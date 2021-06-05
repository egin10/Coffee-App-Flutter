import 'package:coffee_app/models/Coffee.dart';
import 'package:coffee_app/screens/detail/detail_screen.dart';
import 'package:coffee_app/screens/home/components/coffee_card.dart';
import 'package:coffee_app/size_config.dart';
import 'package:flutter/material.dart';

class MostPopulers extends StatelessWidget {
  const MostPopulers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mostPopuler = mostPopulerCoffees..shuffle();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            mostPopuler.length,
            (index) => Padding(
              padding: EdgeInsets.only(left: SizeConfig.screenWidth! * 0.05),
              child: CoffeeCard(
                coffee: mostPopuler[index],
                favPress: () {
                  print("Love ${mostPopuler[index].name}");
                },
                cardPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailScreen(coffee: mostPopuler[index])));
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
