import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shop_app/screens/HomeScreen.dart';

class screens extends StatefulWidget {
  const screens({super.key});

  @override
  State<screens> createState() => _screensState();
}

class _screensState extends State<screens> {
  int _select = 0;
  static List<Widget> Options = <Widget>[
    HomeScreen(),
    Container(),
    Container(),
    Container()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Options.elementAt(_select),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(0.1))
          ]),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: Colors.white,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Colors.redAccent,
            color: Colors.black,
            tabs: [
              GButton(
                icon: LineIcons.home,
                text: "Home",
              ),
              GButton(icon: LineIcons.shoppingBag, text: "Cart"),
              GButton(
                icon: LineIcons.heart,
                text: "Wishlist",
              ),
              GButton(
                icon: LineIcons.user,
                text: "Account",
              ),
            ],
            selectedIndex: _select,
            onTabChange: (index) {
              setState(() {
                _select = index;
              });
            },
          )),
    );
  }
}
