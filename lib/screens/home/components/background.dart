import 'package:coffee_app/constants.dart';
import 'package:coffee_app/size_config.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(color: Colors.blue[50]),
      ),
      Container(
        height: (SizeConfig.screenHeight! * .45),
        decoration: BoxDecoration(
          color: kContainerColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(200),
            bottomRight: Radius.circular(130),
          ),
        ),
      ),
    ]);
  }
}
