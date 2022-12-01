import 'package:bargain/welcom_page.dart';
import 'package:flutter/material.dart';
import 'package:pusher_beams/pusher_beams.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await PusherBeams.instance.start('22d08ea7-d1ab-4237-8ea9-9151e41f5682');
  await PusherBeams.instance.setDeviceInterests(["hello"]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    ); //MaterialApp
  }
}
