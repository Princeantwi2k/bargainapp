import 'package:bargain/dashboad_page.dart';
import 'package:flutter/material.dart';

class OptPage extends StatelessWidget {
  const OptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, left: 15),
                  child: Image.asset(
                    'assets/left-arrow-1.png',
                    width: 20,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                    bottom: 10.0,
                  ),
                  child: Image.asset(
                    'assets/piclogo.png',
                    width: 220,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  bottom: 10.0,
                ),
                child: Image.asset(
                  'assets/opt.png',
                  width: 90,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 280),
              child: Text(" OTP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            ),
            const SizedBox(
              height: 6,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Text(
                  " you need to enter a 4 digit code we sent via Provided email",
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 17)),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                Flexible(
                    child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.all(20.0),
                  child: const TextField(
                      decoration: InputDecoration(hintText: "0"),
                      keyboardType: TextInputType.number),
                )),
                Flexible(
                    child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.all(20.0),
                  child: const TextField(
                      decoration: InputDecoration(hintText: "0"),
                      keyboardType: TextInputType.number),
                )),
                Flexible(
                    child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.all(20.0),
                  child: const TextField(
                      decoration: InputDecoration(hintText: "0"),
                      keyboardType: TextInputType.number),
                )),
                Flexible(
                    child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.all(20.0),
                  child: const TextField(
                    decoration: InputDecoration(hintText: "0"),
                    keyboardType: TextInputType.number,
                  ),
                )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => DashboadPage()));
                },
                child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 148, 203, 219),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                        child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ))),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
