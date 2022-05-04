import 'package:college_vision/pages/attendancePage.dart';
import 'package:college_vision/pages/attendance_page.dart';
import 'package:college_vision/pages/calendar_page.dart';
import 'package:college_vision/pages/generate_qr.dart';
import 'package:college_vision/pages/home_page.dart';
import 'package:college_vision/pages/id_page.dart';
import 'package:college_vision/pages/project_page.dart';
import 'package:college_vision/pages/scan_qr.dart';
import 'package:college_vision/pages/setting_page.dart';
import 'package:college_vision/pages/signup_page.dart';
import 'package:college_vision/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:college_vision/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:college_vision/utils/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/login":(context)=>const LoginPage(),
        "/home":(context) => HomePage(),
        "/signup":((context) => SignUpPage()),
        "/project":((context) => const ProjectPage()),
        "/setting":((context) => const SettingPage()),
        "/attendance":((context) => AttendancePage()),
        "/calendar":((context) => CalendarPage()),
        "/id":((context) => IdPage()),
        "/scan_qr":((context) => ScanQR()),
        "/generate_qr":((context) => GenerateQRPage()),
      },
    );
  }
}

