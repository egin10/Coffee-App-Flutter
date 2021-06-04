import 'package:coffee_app/constants.dart';
import 'package:coffee_app/models/Coffee.dart';
import 'package:coffee_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoffeeCard extends StatelessWidget {
  const CoffeeCard({
    Key? key,
    required this.coffee,
    required this.press,
    this.isBestCoffee = false,
  }) : super(key: key);

  final Coffee coffee;
  final GestureTapCallback press;
  final bool isBestCoffee;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      height: (isBestCoffee)
          ? SizeConfig.screenHeight! * 0.45
          : SizeConfig.screenHeight! * 0.30,
      width: SizeConfig.screenWidth! * 0.55,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: (isBestCoffee)
                  ? SizeConfig.screenHeight! * 0.35
                  : SizeConfig.screenHeight! * 0.25,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: kRatingColor,
                        ),
                        SizedBox(width: 5),
                        Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Text(
                            coffee.rating.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                coffee.name,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "\$${coffee.price.toString()}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        (isBestCoffee)
                            ? GestureDetector(
                                onTap: press,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      "assets/icons/love.svg",
                                      color: Colors.red,
                                      width: 20,
                                      height: 20,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              )
                            : Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 5,
            top: 0,
            child: Container(
              height: (isBestCoffee)
                  ? SizeConfig.screenHeight! * 0.35
                  : SizeConfig.screenHeight! * 0.20,
              width: (isBestCoffee)
                  ? SizeConfig.screenWidth! * 0.35
                  : SizeConfig.screenWidth! * 0.20,
              child: Image(
                image: AssetImage(coffee.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
