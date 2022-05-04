import 'package:college_vision/pages/home_page.dart';
import 'package:college_vision/pages/verify.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';
//import 'package:velocity_x/velocity_x.dart';

class ResetPage extends StatefulWidget {
  ResetPage({Key? key}) : super(key: key);
  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  final _auth = FirebaseAuth.instance;
  String _email = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Reset Password")),
        body: Form(
          key: _formKey,
          child: Column(children: [
            20.heightBox,
            Container(
              height: 56,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0XFFD3CCE3),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 44,
                ),
                title: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Email Id",
                    labelStyle: TextStyle(fontSize: 23),
                  ),
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     return "Username cannot be empty";
                  //   }
                  //   return null;
                  // },
                  onChanged: (value) {
                    setState(() {
                      _email = value.trim();
                    });
                  },
                ),
              ),
            ).pOnly(left: 12, right: 12),
            20.heightBox,
            Container(
              color: Colors.red,
              child: TextButton(
                onPressed: () async {
                  // try {
                  _auth.sendPasswordResetEmail(email: _email);

                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text(
                      "Reset Link has been sent to mail",
                      //style: TextStyle(color: Colors.white),
                    ),
                    // backgroundColor: Colors.black,
                  ));
                  Future.delayed(Duration(milliseconds: 1000),(){
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  });
                },
                child: Text(
                  "Send Reset Link",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ]),
        ));
  }
}
