import 'package:coffee_app/constants.dart';
import 'package:coffee_app/size_config.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selected = 0;

  final List<IconData> navBarItems = [
    Icons.home,
    Icons.category_outlined,
    Icons.search,
    Icons.person_outline_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight! * .1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        border: Border.all(color: Colors.grey, width: .4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...List.generate(
            navBarItems.length,
            (index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 1),
              child: buildNavBarItem(
                icon: navBarItems[index],
                index: index,
                press: () {
                  setState(() {
                    _selected = index;
                  });
                  print(_selected);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector buildNavBarItem(
      {required IconData icon,
      required GestureTapCallback press,
      required int index}) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 50,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Icon(
          icon,
          color: (_selected == index) ? kPrimaryColor : Colors.grey,
          size: (_selected == index) ? 37 : 20,
        ),
      ),
    );
  }
}
