import 'package:coffee_app/components/app_bar.dart';
import 'package:coffee_app/components/bottom_nav_bar.dart';
import 'package:coffee_app/constants.dart';
import 'package:coffee_app/screens/home/components/body.dart';
import 'package:coffee_app/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kSecondaryColor,
      appBar: buildAppBar(isHome: true),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
