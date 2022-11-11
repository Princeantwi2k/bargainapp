import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/pic.png'),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Color.fromARGB(160, 0, 0, 0), BlendMode.darken),
        )),
      ),
    );
  }
}
