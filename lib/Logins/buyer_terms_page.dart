import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Dashboad/dashboad_page.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool? _checkBox = false;
  bool? _agreedBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 100),
                padding: const EdgeInsets.only(
                  right: 200,
                ),
                child:
                    Text("Terms &", style: GoogleFonts.bebasNeue(fontSize: 26)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 200),
                child: Text(
                  "Conditions",
                  style: GoogleFonts.bebasNeue(fontSize: 26),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                    "Lorem ipsum dolor sit amet, consectetur  cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: GoogleFonts.roboto(fontSize: 17)),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation  ullamco laboris nisi ut aliquip ex ea .",
                    style: GoogleFonts.roboto(fontSize: 17)),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                      tristate: true,
                      checkColor: Colors.white,
                      activeColor: const Color(0xff3f6b65),
                      value: _agreedBox,
                      onChanged: (val) {
                        setState(() {
                          _agreedBox = val;
                        });
                      }),
                  const Text("I accept all Terms & conditions")
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Checkbox(
                      tristate: true,
                      checkColor: Colors.white,
                      activeColor: const Color(0xff3f6b65),
                      value: _checkBox,
                      onChanged: (val) {
                        setState(() {
                          _checkBox = val;
                        });
                      }),
                  const Text("I accept user fee")
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const DashBoadPage()));
                  },
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 148, 203, 219),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                          child: Text(
                        "Complete",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
