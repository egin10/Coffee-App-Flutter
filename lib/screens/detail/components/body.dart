import 'package:coffee_app/constants.dart';
import 'package:coffee_app/models/Coffee.dart';
import 'package:coffee_app/screens/detail/components/bottom_nav.dart';
import 'package:coffee_app/screens/detail/components/extra_card.dart';
import 'package:coffee_app/screens/detail/components/rating.dart';
import 'package:coffee_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: SizeConfig.screenHeight! * .06),
      child: Stack(
        children: [
          Positioned(
            left: SizeConfig.screenWidth! * 0.27,
            child: Container(
              padding: EdgeInsets.all(5),
              height: SizeConfig.screenHeight! * .4,
              width: SizeConfig.screenWidth! * .4,
              child: Hero(
                tag: coffee.id,
                child: Image.asset(
                  coffee.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            clipBehavior: Clip.none,
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight! * .42),
                Container(
                  padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Text(
                              coffee.name,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              print("Love onPressed!");
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                SvgPicture.asset(
                                  "assets/icons/love.svg",
                                  color: Colors.red,
                                  width: 15,
                                  height: 15,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      buildRating(coffee),
                      SizedBox(height: 10),
                      Text(
                        coffee.description,
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Text(
                          "Add Extra",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        clipBehavior: Clip.none,
                        child: Row(
                          children: [
                            ...List.generate(
                                coffee.extras.length,
                                (index) =>
                                    ExtraCard(extra: coffee.extras[index])),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.screenHeight! * .16),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: BottomNav(price: coffee.price)),
        ],
      ),
    );
  }
}
