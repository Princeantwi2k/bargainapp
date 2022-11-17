import 'package:bargain/visit_dashboad_page.dart';
import 'package:flutter/material.dart';

class BuyersVisitorsPage extends StatefulWidget {
  const BuyersVisitorsPage({super.key});

  @override
  State<BuyersVisitorsPage> createState() => _BuyersVisitorsPageState();
}

class _BuyersVisitorsPageState extends State<BuyersVisitorsPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const VisitDashboad(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              const SizedBox(
                height: 190,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 250.0),
                child: Text(
                  "Item Category",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
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
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 180.0, left: 20),
                    child: Text(
                      "Live Auctions",
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
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          "assets/auctionPic3.jpg",
                          height: 200,
                          width: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          "assets/auctionPics.jpg",
                          height: 200,
                          width: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          "assets/auctionPic1.jpg",
                          height: 200,
                          width: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          "assets/auctionPic2.jpg",
                          height: 200,
                          width: 250,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    ]);
  }
}
