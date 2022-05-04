import 'package:college_vision/utils/routes.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BottomNavBar extends StatefulWidget {
  static const routeName = '/BottomNavBar';
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      index: 0,
      height: 50.0,
      items: <Widget>[
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, MyRoutes.homeRoute);
          },
          child: Container(
              height: 37,
              width: 37,
              decoration: BoxDecoration(
                  color: const Color(0XFFF1FAFF),
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                "assets/images/home.png",
                alignment: Alignment.center,
              )),
        ),
        Container(
            height: 37,
            width: 37,
            decoration: BoxDecoration(
                color: const Color(0XFFF1FAFF),
                borderRadius: BorderRadius.circular(20)),
            child: Image.asset(
              "assets/images/stopwatch.png",
              alignment: Alignment.center,
            )),
        Container(
            height: 37,
            width: 37,
            decoration: BoxDecoration(
                color: const Color(0XFFF1FAFF),
                borderRadius: BorderRadius.circular(20)),
            child: Image.asset(
              "assets/images/bell.png",
              alignment: Alignment.center,
            )),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, MyRoutes.settingRoute);
          },
          child: Container(
              height: 37,
              width: 37,
              decoration: BoxDecoration(
                  color: const Color(0XFFE7EBF8),
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                "assets/images/setting.png",
                alignment: Alignment.center,
              )),
        ),
      ],
      color: Color(0XFF2A3856),
      buttonBackgroundColor: Colors.white,
      backgroundColor: Color(0XFF2A3856),
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 600),
      onTap: (index) {
        setState(() {
          _page = index;
        });
      },
    );
  }
}
