import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:bargain/Screens/dashboad_page.dart';
import 'package:bargain/Screens/profile_page.dart';
import 'package:bargain/Screens/search_page.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';

class MainRootPage extends StatefulWidget {
  const MainRootPage({super.key});

  @override
  State<MainRootPage> createState() => _MainRootPageState();
}

class _MainRootPageState extends State<MainRootPage> {
  int _bottomNavindex = 0;

  List<Widget> pages = const [
    DashBoadPage(),
    SearchPage(),
    CartPage(),
    ProfilePage()
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
