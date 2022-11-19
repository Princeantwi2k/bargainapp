import 'package:bargain/VisitorsPage/details_page.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'Product.dart';

class VisitSearchPage extends StatefulWidget {
  const VisitSearchPage({super.key});

  @override
  State<VisitSearchPage> createState() => _VisitSearchPageState();
}

class _VisitSearchPageState extends State<VisitSearchPage> {
  List<String> prductTitle = ["Mercedes", "Dog", "House"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Searches(),
            Container(
              padding: EdgeInsets.only(bottom: 10, top: 30),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 180.0, left: 20),
                    child: Text(
                      "Trending Items",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 18),
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            // Expanded(
            //     child: GridView.builder(
            //         itemCount: products.length,
            //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //             crossAxisCount: 2),
            //         itemBuilder: (context, index) => cartItem(
            //             product: products[index],
            //             press: () {
            //               Navigator.push(
            //                 context,
            //                 MaterialPageRoute(
            //                   builder: (context) =>
            //                       DetailsPage(product: products[index]),
            //                 ),
            //               );
            //             }))),
            Container(
              padding: EdgeInsets.only(bottom: 10, top: 30),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 180.0, left: 20),
                    child: Text(
                      "Recently viewed",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 18),
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            recentItem(),
          ],
        )),
      ),
    );
  }
}

class recentItem extends StatelessWidget {
  const recentItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 20),
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(9)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      margin: const EdgeInsets.only(bottom: 70),
                      decoration: BoxDecoration(color: Colors.red[300]),
                      child: Text(
                        "Sold",
                        style: TextStyle(color: Colors.red[400]),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset(
                    "assets/phone.png",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 70),
                    child: Image.asset(
                      "assets/heart.png",
                      width: 15,
                      height: 15,
                      fit: BoxFit.cover,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 20),
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(9)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      margin: const EdgeInsets.only(bottom: 70),
                      decoration: BoxDecoration(color: Colors.red[300]),
                      child: Text(
                        "Sold",
                        style: TextStyle(color: Colors.red[400]),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset(
                    "assets/House.png",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 70),
                    child: Image.asset(
                      "assets/heart.png",
                      width: 15,
                      height: 15,
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 20),
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(9)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      margin: const EdgeInsets.only(bottom: 70),
                      decoration: BoxDecoration(color: Colors.red[300]),
                      child: Text(
                        "Sold",
                        style: TextStyle(color: Colors.red[400]),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset(
                    "assets/laptop.png",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 70),
                    child: Image.asset(
                      "assets/heart.png",
                      width: 15,
                      height: 15,
                      fit: BoxFit.cover,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Searches extends StatelessWidget {
  const Searches({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 4, bottom: 4),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                      hintText: "what are you looking for? ",
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(right: 200, top: 10, bottom: 5),
              child: const Text(
                "Recent searches",
                style: TextStyle(fontSize: 16),
              )),
          Container(
              margin: const EdgeInsets.only(right: 250, top: 5, bottom: 5),
              child: const Text(
                "IPhone x",
                style: TextStyle(fontSize: 16),
              )),
          Container(
              margin: const EdgeInsets.only(right: 170, top: 5, bottom: 5),
              child: const Text(
                "Samsung galaxy S10",
                style: TextStyle(fontSize: 16),
              )),
          Container(
              margin: const EdgeInsets.only(right: 210, top: 5, bottom: 5),
              child: const Text(
                "MackBook pro",
                style: TextStyle(fontSize: 16),
              )),
        ],
      ),
    );
  }
}

class cartItem extends StatelessWidget {
  final Product product;
  final Function press;

  const cartItem({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Expanded(
            child: Container(
              // padding:
              //     EdgeInsets.only(left: 10, top: 20, right: 20, bottom: 20),
              // margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                  color: product.color, borderRadius: BorderRadius.circular(9)),
              child: Image.asset(
                product.image,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(product.title)
        ],
      ),
    );
  }
}
