import 'package:bargain/VisitorsPage/buyers_visitors_page.dart';
import 'package:bargain/Dashboad/dashboad_page.dart';
import 'package:bargain/Logins/login_page.dart';
import 'package:bargain/VisitorsPage/search_visitor_page.dart';
import 'package:flutter/material.dart';

class Rootpage extends StatefulWidget {
  const Rootpage({super.key});

  @override
  State<Rootpage> createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {
  int currentPage = 0;

  List<Widget> pages = const [
    BuyersVisitorsPage(),
    VisitSearchPage(),
    LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.search), label: "search"),
          NavigationDestination(icon: Icon(Icons.shopping_cart), label: "cart"),
          NavigationDestination(icon: Icon(Icons.person), label: "profile"),
        ],
        onDestinationSelected: (int index) => {
          setState(
            () {
              currentPage = index;
            },
          )
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
