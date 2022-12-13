import 'package:bargain/MainAuth/Provider/AuthProvider/auth_provider.dart';
import 'package:bargain/MainAuth/Screens/Authentication/register.dart';
import 'package:bargain/MainAuth/Utils/snack_message.dart';
import 'package:bargain/MainAuth/Widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Utils/routers.dart';
import '../../Widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    _email.clear();
    _password.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 237, 247),
      // appBar: AppBar(title: const Text('Login ')),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
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
                    const SizedBox(
                      height: 50,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 200.0),
                      child: Text("Hello Again ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 200.0),
                      child: Text("Sign in to continue",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 17)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //email testfild

                    const SizedBox(
                      height: 10,
                    ),
                    //sign in button

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
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        right: 200.0,
                      ),
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      ),
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
                        text: 'Login',
                        tap: () {
                          if (_email.text.isEmpty || _password.text.isEmpty) {
                            showMessage(
                                message: "All fields are required",
                                context: context);
                          } else {
                            auth.loginUser(
                                context: context,
                                email: _email.text.trim(),
                                password: _password.text.trim());
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
                            .nextPage(page: const RegisterPage());
                      },
                      child: const Text('Register Instead'),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
