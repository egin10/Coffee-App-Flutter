import 'package:coffee_app/components/app_bar.dart';
import 'package:coffee_app/constants.dart';
import 'package:coffee_app/models/Coffee.dart';
import 'package:coffee_app/screens/detail/components/body.dart';
import 'package:coffee_app/size_config.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kContainerColor,
      appBar: buildAppBar(
          isHome: false,
          backTapPress: () {
            Navigator.pop(context);
          }),
      body: Body(coffee: coffee),
    );
  }
}
