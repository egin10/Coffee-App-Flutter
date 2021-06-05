import 'package:coffee_app/constants.dart';
import 'package:coffee_app/models/Extra.dart';
import 'package:coffee_app/size_config.dart';
import 'package:flutter/material.dart';

class ExtrasCard extends StatelessWidget {
  const ExtrasCard({
    Key? key,
    required this.extra,
  }) : super(key: key);

  final Extra extra;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      height: SizeConfig.screenHeight! * .26,
      width: SizeConfig.screenWidth! * .33,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: SizeConfig.screenHeight! * .2,
              width: SizeConfig.screenWidth! * .33,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              alignment: Alignment.topRight,
              height: 100,
              width: 110,
              child: Image(
                image: AssetImage(extra.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 90,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(extra.name),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "\$${extra.price}",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          print("Add ${extra.name} to Extra");
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
