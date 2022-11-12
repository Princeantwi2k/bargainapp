import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DashBoadPage extends StatefulWidget {
  const DashBoadPage({super.key});

  @override
  State<DashBoadPage> createState() => _DashBoadPageState();
}

class _DashBoadPageState extends State<DashBoadPage> {
  List<String> images = [
    "assets/mercedes.png",
    "assets/dog.png",
    "assets/House.png",
  ];
  List<String> prductTitle = ["Mercedes", "Dog", "House"];
  List<String> productDetails = ["Auction End", "Auction End", "Action Start"];
  List<String> productStatus = ["4hr 55mins", "2hr 15mins", "4hr 5mins"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        bottomNavigationBar:
            // ignore: prefer_const_literals_to_create_immutables
            NavigationBar(backgroundColor: Colors.white, destinations: [
          const NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          const NavigationDestination(
              icon: Icon(Icons.person), label: "Person"),
          const NavigationDestination(
              icon: Icon(Icons.search), label: "search"),
          const NavigationDestination(
              icon: Icon(Icons.shopping_cart), label: "cart"),
        ]),
        body: SingleChildScrollView(
          child: SafeArea(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/profile.jpg',
                    ),
                    radius: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 80),
                        child: const Text("Hello",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 15)),
                      ),
                      const Text("Ann Onwuegbuchi",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(
                    'assets/Search.png',
                    width: 20,
                    height: 20,
                  ),
                ),
                Image.asset(
                  'assets/Group 402.png',
                  width: 20,
                  height: 100,
                ),
              ],
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 200.0, autoPlay: true, viewportFraction: 0.9),
              items: [
                "assets/banner.png",
                "assets/banner 2.png",
              ].map((e) {
                return Builder(builder: (BuildContext context) {
                  return Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      e,
                    ),
                  );
                });
              }).toList(),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 10),
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/payment.png",
                          height: 20,
                          width: 20,
                        ),
                        const Text("Pay In",
                            style: TextStyle(
                              color: Color.fromARGB(255, 12, 86, 109),
                            ))
                      ],
                    )),
                Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/payment.png",
                          height: 20,
                          width: 20,
                        ),
                        const Text("Cash out",
                            style: TextStyle(
                              color: Color.fromARGB(255, 12, 86, 109),
                            ))
                      ],
                    )),
                Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/share.png",
                          height: 20,
                          width: 20,
                        ),
                        const Text("Track orders",
                            style: TextStyle(
                              color: Color.fromARGB(255, 12, 86, 109),
                              fontSize: 10,
                            ))
                      ],
                    )),
                Container(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    margin: const EdgeInsets.all(10.0),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/store.png",
                          height: 20,
                          width: 20,
                        ),
                        const Text("Shop",
                            style: TextStyle(
                              color: Color.fromARGB(255, 12, 86, 109),
                            ))
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 250.0),
              child: Text(
                "Item Category",
                style: TextStyle(),
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 30, bottom: 10, left: 20, right: 20),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 95, 167, 163),
                                    Color(0xff3f6b65),
                                    Color(0xff3f6b65),
                                  ],
                                  stops: [
                                    0.2,
                                    0.9,
                                    0.2
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.centerRight),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/mercedes.png",
                            height: 40,
                            width: 50,
                          ),
                        ),
                        const Text("Car"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 30, bottom: 10, left: 20, right: 20),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 95, 167, 163),
                                    Color(0xff3f6b65),
                                    Color(0xff3f6b65),
                                  ],
                                  stops: [
                                    0.2,
                                    0.9,
                                    0.2
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.centerRight),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/phone.png",
                            height: 40,
                            width: 50,
                          ),
                        ),
                        const Text("Electronics"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 30, bottom: 10, left: 20, right: 20),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 95, 167, 163),
                                    Color(0xff3f6b65),
                                    Color(0xff3f6b65),
                                  ],
                                  stops: [
                                    0.2,
                                    0.9,
                                    0.2
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.centerRight),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/dog.png",
                            height: 40,
                            width: 50,
                          ),
                        ),
                        const Text("Animal"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 30, bottom: 10, left: 20, right: 20),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 95, 167, 163),
                                    Color(0xff3f6b65),
                                    Color(0xff3f6b65),
                                  ],
                                  stops: [
                                    0.2,
                                    0.9,
                                    0.2
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.centerRight),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/House.png",
                            height: 40,
                            width: 50,
                          ),
                        ),
                        const Text("Car"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 250.0),
              child: Text(
                "Iive Auction",
                style: TextStyle(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: prductTitle.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: ListTile(
                    leading: CircleAvatar(
                        child: CircleAvatar(
                            backgroundImage: AssetImage(images[index]),
                            radius: 20)),
                    title: Text(prductTitle[index]),
                    subtitle: Text(productDetails[index]),
                    trailing: Container(
                      padding: EdgeInsets.all(7),
                      color: Color.fromARGB(255, 241, 32, 17),
                      child: Text(
                        "LIVE",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            )
          ])),
        ));
  }
}

//   Widget buildList() => ListView.builder(
//         itemCount: prductTitle.length,
//         itemBuilder: (context, index) {
//           return Container(
//             margin: const EdgeInsets.only(bottom: 10),
//             decoration: const BoxDecoration(color: Colors.amber),
//             child: ListTile(
//               leading: CircleAvatar(
//                   child: CircleAvatar(
//                       backgroundImage: AssetImage(images[index]), radius: 30)),
//               title: Text(prductTitle[index]),
//               subtitle: Text(productDetails[index]),
//               trailing: Text(productstastus[index].toString()),
//             ),
//           );
//         },
//       );
// }
