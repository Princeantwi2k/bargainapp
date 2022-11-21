import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DashBoadPage extends StatefulWidget {
  const DashBoadPage({
    super.key,
  });

  @override
  State<DashBoadPage> createState() => _DashBoadPageState();
}

class _DashBoadPageState extends State<DashBoadPage> {
  List<String> images = [
    "assets/mercedes.png",
    "assets/dog.png",
    "assets/House.png",
  ];

  List<String> itemCategory = [
    "assets/account.png",
    "assets/payment.png",
    "assets/share.png",
    "assets/shop.png",
  ];
  List<String> CategoryName = ["Pay in", "Cash out", "Track orders", "shop"];

  List<String> prductTitle = ["Mercedes", "Dog", "House"];

  List<String> productDetails = ["Auction End", "Auction End", "Action Start"];
  List<String> productStatus = ["4hr 55mins", "2hr 15mins", "4hr 5mins"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          leading: Container(
            margin: const EdgeInsets.all(10),
            child: const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/profile.jpg',
                ),
                radius: 20),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 10, right: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 80),
                  child: const Text("Hello",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Colors.black)),
                ),
                const Text("Ann Onwuegbuchi",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black)),
              ],
            ),
          ),
          actions: <Widget>[
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.only(
                      right: 30, top: 10, bottom: 10, left: 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(
                    'assets/Search.png',
                    width: 20,
                    height: 20,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: Image.asset(
                    'assets/Group 402.png',
                    width: 20,
                    height: 100,
                  ),
                ),
              ],
            )
          ],
        ),
        body: Stack(children: [
          SingleChildScrollView(
            child: SafeArea(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  const SizedBox(
                    height: 8,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 200.0, autoPlay: true, viewportFraction: 1),
                    items: [
                      "assets/banner.png",
                      "assets/banner 2.png",
                    ].map((e) {
                      return Builder(builder: (BuildContext context) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
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
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      height: 60,
                      child: ListView.builder(
                          itemCount: itemCategory.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 100,
                              margin: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 1,
                                    right: 1,
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              itemCategory[index],
                                              height: 20,
                                              width: 30,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(3.0),
                                              child: Text(CategoryName[index]),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          })),
                  const SizedBox(
                    height: 20,
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
                                  fit: BoxFit.cover,
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
                                  fit: BoxFit.cover,
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
          ),
        ]));
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
