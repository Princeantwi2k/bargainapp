import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:bargain/VisitorsPage/buyers_visitors_page.dart';

import 'package:flutter/material.dart';

class Rootpage extends StatefulWidget {
  const Rootpage({super.key});

  @override
  State<Rootpage> createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {
  int _bottomNavindex = 0;

  List<Widget> pages = const [
    BuyersVisitorsPage(),
  ];

  List<IconData> iconList = [
    Icons.home,
    Icons.search_rounded,
    Icons.shopping_cart,
    Icons.person
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _bottomNavindex,
        children: pages,
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashColor: Colors.amber,
        activeColor: Color.fromARGB(255, 34, 125, 153),
        inactiveColor: Color.fromARGB(255, 45, 104, 91),
        icons: iconList,
        activeIndex: _bottomNavindex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          setState(() {
            _bottomNavindex = index;
          });
        },
      ),
    );
  }
}
