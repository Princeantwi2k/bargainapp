import 'package:bargain/VisitorsPage/visit_dashboad_page.dart';
import 'package:flutter/material.dart';

class BuyersVisitorsPage extends StatefulWidget {
  const BuyersVisitorsPage({super.key});

  @override
  State<BuyersVisitorsPage> createState() => _BuyersVisitorsPageState();
}

class _BuyersVisitorsPageState extends State<BuyersVisitorsPage> {
  bool toggleIsFavorited(bool isFavorited) {
    return !isFavorited;
  }

  List<String> images = [
    "assets/auctionPic3.jpg",
    "assets/auctionPics.jpg",
    "assets/banner 2.png",
  ];
  List<String> itemCategory = [
    "assets/mercedes.png",
    "assets/phone.png",
    "assets/dog.png",
    "assets/House.png",
  ];
  List<String> prductTitle = ["Mercedes", "Electronics", "Dog", "House"];

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
                padding: EdgeInsets.only(right: 250.0, bottom: 10),
                child: Text(
                  "Item Category",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                ),
              ),
              SizedBox(
                  height: 100,
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
                                    child: Image.asset(
                                      itemCategory[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      })),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                        right: 180.0, left: 20, top: 5, bottom: 5),
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
              SizedBox(
                  height: 200,
                  child: ListView.builder(
                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 270,
                          margin: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.cover,
                                  colorFilter: const ColorFilter.mode(
                                      Color.fromARGB(31, 0, 0, 0),
                                      BlendMode.darken)),
                              borderRadius: BorderRadius.circular(10)),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 10,
                                right: 30,
                                child: Container(
                                    height: 60,
                                    width: 200,
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black54),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: const [
                                            Text(
                                              "oil on my head ",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "4H 35mins ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 38.0),
                                          child: Column(
                                            children: const [
                                              Text(" current price ",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 10)),
                                              Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text("20,000 ",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        );
                      })),
            ],
          )),
        ),
      ),
    ]);
  }
}
