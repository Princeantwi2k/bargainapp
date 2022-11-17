import 'package:flutter/material.dart';

class VisitDashboad extends StatefulWidget {
  const VisitDashboad({super.key});

  @override
  State<VisitDashboad> createState() => _VisitDashboadState();
}

class _VisitDashboadState extends State<VisitDashboad> {
  // int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Business',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: School',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 3: Settings',
  //     style: optionStyle,
  //   ),
  // ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          buildBackground(),
          Positioned(top: 1, left: 0, child: visitimage()),
          Positioned(top: 30, right: 10, child: shopimage()),
          Positioned(right: 25, top: 132, child: buildShopCart()),
          Positioned(top: 100, left: 120, child: buildText()),
          buildTextField()
        ],
      ),
    );
  }
}

Widget visitimage() => Image.asset(
      "assets/visitPic.png",
      height: 300,
      width: 300,
      fit: BoxFit.cover,
    );

Widget shopimage() => Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(right: 30, top: 10, bottom: 10, left: 0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Image.asset(
        'assets/cart.png',
      ),
    );

Widget buildBackground() => ClipRRect(
      child: Container(
        height: 200,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 95, 167, 163),
            Color(0xff3f6b65),
            Color(0xff3f6b65),
          ], stops: [
            0.2,
            0.9,
            0.2
          ], begin: Alignment.topLeft, end: Alignment.centerRight),
        ),
      ),
    );

Widget buildShopCart() => Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(right: 30, top: 10, bottom: 10, left: 0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Image.asset(
        'assets/Search.png',
      ),
    );

Widget buildText() => Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Container(
          margin: const EdgeInsets.only(right: 80),
          child: const Text(
            "Make an Offer!",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text(
            "What are you waiting for start bidding!",
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );

Widget buildTextField() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 1),
      child: Container(
        margin: const EdgeInsets.only(top: 138),
        decoration: BoxDecoration(
            color: Color.fromARGB(153, 255, 252, 252),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12)),
        child: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: " What are you looking for?",
            ),
          ),
        ),
      ),
    );
