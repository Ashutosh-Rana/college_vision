import 'package:college_vision/pages/home_page.dart';
import 'package:college_vision/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:college_vision/pages/login_page.dart';
//import 'package:college_vision/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: MyRoutes.loginRoute,
      routes: {
        "/":(context)=>const LoginPage(),
        "/home":(context) =>const HomePage(),
        "/signup":((context) => const SignUpPage())
      },
    );
  }
}

