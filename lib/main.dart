// import 'package:bargain/Authentication/data_class.dart';
// import 'package:bargain/welcom_page.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// void main() async {
//   // WidgetsFlutterBinding.ensureInitialized();

//   // await PusherBeams.instance.start('22d08ea7-d1ab-4237-8ea9-9151e41f5682');
//   // await PusherBeams.instance.setDeviceInterests(["hello"]);
//   runApp(MultiProvider(providers: [
//     ChangeNotifierProvider(create: (_) => DataClass()),
//   ], child: const MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: WelcomePage(),
//     ); //MaterialApp
//   }
// }

import 'package:bargain/MainAuth/Provider/Database/db_provider.dart';
import 'package:bargain/MainAuth/splash.dart';
import 'package:bargain/welcom_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MainAuth/Provider/AuthProvider/auth_provider.dart';
import 'MainAuth/Provider/TaskProvider/add_task_provider.dart';
import 'MainAuth/Provider/TaskProvider/delete_task_provider.dart';
import 'MainAuth/Styles/colors.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthenticationProvider()),
        ChangeNotifierProvider(create: (_) => DatabaseProvider()),
        ChangeNotifierProvider(create: (_) => AddTaskProvider()),
        ChangeNotifierProvider(create: (_) => DeleteTaskProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              color: primaryColor,
            ),
            floatingActionButtonTheme:
                FloatingActionButtonThemeData(backgroundColor: primaryColor),
            primaryColor: primaryColor),
        debugShowCheckedModeBanner: false,
        home: WelcomePage(),
      ),
    );
  }
}
