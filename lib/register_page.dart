import 'package:bargain/create_account_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 247, 252),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              //Hello again
              Image.asset(
                'assets/piclogo.png',
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200.0),
                child: Text("Create Account",
                    style: GoogleFonts.bebasNeue(fontSize: 24)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 200.0),
                child: Text("Sign up to get started",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 17)),
              ),
              const SizedBox(
                height: 25,
              ),
              //email testfild

              const SizedBox(
                height: 10,
              ),
              //password testfild
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 8, bottom: 8),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter your email",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("By opening an account you agree to our"),
              Center(
                  child: Text(
                "Term of Use",
                style: GoogleFonts.bebasNeue(fontSize: 13, color: Colors.red),
              )),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: GestureDetector(
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              color: const Color.fromARGB(255, 226, 4, 4)),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                          child: Text(
                        "Use Phone",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ))),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              //sign in button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const CreateAccount()));
                  },
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 148, 203, 219),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                          child: Text(
                        "Confirm",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ))),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              //not a member? register now

              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Row(
                  children: [
                    const Text("Already have an account? ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    GestureDetector(
                      child: const Text("Sign!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
