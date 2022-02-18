import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:piggyvest_clone1/screens/account.dart';
import 'package:piggyvest_clone1/screens/apps.dart';
import 'package:piggyvest_clone1/screens/home_screens.dart';
import 'package:piggyvest_clone1/screens/invest.dart';
import 'package:piggyvest_clone1/screens/savings.dart';

class base_screen extends StatefulWidget {
  const base_screen({Key? key}) : super(key: key);

  @override
  _base_screenState createState() => _base_screenState();
}

class _base_screenState extends State<base_screen> {
  // bottom navigation bar
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget> [
    homePage(),
    savings(),
    invest(),
    apps(),
    account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue.shade800,
          unselectedItemColor: Colors.grey,
          items: const[
            BottomNavigationBarItem(
                icon: Icon(LineIcons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(LineIcons.bullseye), label: "Savings"),
            BottomNavigationBarItem(
                icon: Icon(LineIcons.rocket), label: "Invest"),
            BottomNavigationBarItem(
                icon: Icon(LineIcons.cube), label: "Apps"),
                BottomNavigationBarItem(
                icon: Icon(LineIcons.user), label: "Account"),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}