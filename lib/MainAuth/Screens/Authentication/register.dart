import 'package:bargain/MainAuth/Provider/AuthProvider/auth_provider.dart';
import 'package:bargain/MainAuth/Screens/Authentication/login.dart';
import 'package:bargain/MainAuth/Utils/routers.dart';
import 'package:bargain/MainAuth/Utils/snack_message.dart';
import 'package:bargain/MainAuth/Widgets/button.dart';
import 'package:bargain/MainAuth/Widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();

  @override
  void dispose() {
    _email.clear();
    _password.clear();
    _firstName.clear();
    _lastName.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 237, 247),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    // Image.asset(
                    //   'assets/piclogo.png',
                    //   width: 200,
                    //   height: 150,
                    //   fit: BoxFit.cover,
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 200.0),
                    //   child: Text("Create Account",
                    //       style: GoogleFonts.bebasNeue(fontSize: 24)),
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // const Padding(
                    //   padding: EdgeInsets.only(right: 200.0),
                    //   child: Text("Sign up to get started",
                    //       style: TextStyle(
                    //           fontWeight: FontWeight.normal, fontSize: 17)),
                    // ),
                    // const SizedBox(
                    //   height: 25,
                    // ),
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 10.0, left: 15),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              'assets/left-arrow-1.png',
                              width: 20,
                              height: 100,
                            ),
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
                    const Padding(
                      padding: EdgeInsets.only(right: 200.0),
                      child: Text("Hello Again ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 200.0),
                      child: Text("Sign in to continue",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 17)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    customTextField(
                      title: 'First Name',
                      controller: _firstName,
                      hint: 'Enter your first name',
                    ),
                    customTextField(
                      title: 'Last Name',
                      controller: _lastName,
                      hint: 'Enter your last name',
                    ),

                    customTextField(
                      title: 'Email',
                      controller: _email,
                      hint: 'Enter you valid email address',
                    ),
                    customTextFieldPassword(
                      title: 'Password',
                      controller: _password,
                      hint: 'Enter your secured password',
                    ),

                    ///Button
                    Consumer<AuthenticationProvider>(
                        builder: (context, auth, child) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        if (auth.resMessage != '') {
                          showMessage(
                              message: auth.resMessage, context: context);

                          ///Clear the response message to avoid duplicate
                          auth.clear();
                        }
                      });
                      return customButton(
                        text: 'Register',
                        tap: () {
                          if (_email.text.isEmpty ||
                              _password.text.isEmpty ||
                              _firstName.text.isEmpty ||
                              _lastName.text.isEmpty) {
                            showMessage(
                                message: "All fields are required",
                                context: context);
                          } else {
                            auth.registerUser(
                                firstName: _firstName.text.trim(),
                                lastName: _lastName.text.trim(),
                                email: _email.text.trim(),
                                password: _password.text.trim(),
                                context: context);
                          }
                        },
                        context: context,
                        status: auth.isLoading,
                      );
                    }),

                    const SizedBox(
                      height: 10,
                    ),

                    GestureDetector(
                      onTap: () {
                        PageNavigator(ctx: context)
                            .nextPage(page: const LoginPage());
                      },
                      child: const Text('Login Instead'),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
