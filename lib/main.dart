import 'package:college_vision/pages/attendancePage.dart';
import 'package:college_vision/pages/attendance_page.dart';
import 'package:college_vision/pages/calendar_page.dart';
import 'package:college_vision/pages/home_page.dart';
import 'package:college_vision/pages/id_page.dart';
import 'package:college_vision/pages/project_page.dart';
import 'package:college_vision/pages/setting_page.dart';
import 'package:college_vision/pages/signup_page.dart';
import 'package:college_vision/utils/routes.dart';
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
      initialRoute: MyRoutes.attendanceRoute,
      routes: {
        "/":(context)=>const LoginPage(),
        "/home":(context) =>const HomePage(),
        "/signup":((context) => const SignUpPage()),
        "/project":((context) => const ProjectPage()),
        "/setting":((context) => const SettingPage()),
        "/attendance":((context) => AttendancePage()),
        "/calendar":((context) => CalendarPage()),
        "/id":((context) => IdPage()),
      },
    );
  }
}

