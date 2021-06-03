import 'package:coffee_app/constants.dart';
import 'package:coffee_app/models/Coffee.dart';
import 'package:coffee_app/screens/home/components/categories.dart';
import 'package:coffee_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BestCoffee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            SizedBox(
              height: 10,
            ),
            Categories(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    coffees.length,
                    (index) => Padding(
                      padding:
                          EdgeInsets.only(left: SizeConfig.screenWidth! * 0.05),
                      child: BestCoffeeCard(
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
            )
          ],
        ),
      ),
    );
  }
}

class BestCoffeeCard extends StatelessWidget {
  const BestCoffeeCard({
    Key? key,
    required this.coffee,
    required this.press,
  }) : super(key: key);

  final Coffee coffee;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      height: SizeConfig.screenHeight! * 0.35,
      width: SizeConfig.screenWidth! * 0.55,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: SizeConfig.screenHeight! * 0.3,
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
                        GestureDetector(
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
                        ),
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
              height: SizeConfig.screenHeight! * 0.2,
              width: SizeConfig.screenWidth! * 0.2,
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
