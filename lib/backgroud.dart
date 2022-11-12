import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Backgroud extends StatefulWidget {
  const Backgroud({super.key});

  @override
  State<Backgroud> createState() => _BackgroudState();
}

class _BackgroudState extends State<Backgroud> {
  int activeIndex = 0;
  final images = ["assets/pic.png", "assets/person.png", "assets/happy.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
                itemCount: images.length,
                itemBuilder: (context, index, realindex) {
                  final urlimage = images[index];
                  return buildimage(urlimage, index);
                },
                options: CarouselOptions(
                    height: 690, autoPlay: true, viewportFraction: 1.0)),
          ],
        )),
      ),
    );
  }
}

Widget buildimage(String urlimage, int index) => Container(
        decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(urlimage),
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Color.fromARGB(160, 0, 0, 0), BlendMode.darken),
      ),
    ));
