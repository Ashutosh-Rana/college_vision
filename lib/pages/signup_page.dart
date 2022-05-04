import 'package:college_vision/pages/home_page.dart';
import 'package:college_vision/pages/verify.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';
//import 'package:velocity_x/velocity_x.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _auth = FirebaseAuth.instance;
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("SignUp")),
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
                    hintText: "Enter Email Id",
                    //hintStyle: TextStyle(fontSize: 30),
                    labelText: "Username",
                    labelStyle: TextStyle(fontSize: 23),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username cannot be empty";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      email = value.trim();
                    });
                  },
                ),
              ),
            ).pOnly(left: 12, right: 12),
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
                  Icons.lock,
                  size: 44,
                ),
                title: (TextFormField(
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 23),
                    suffixIcon: IconButton(
                      iconSize: 44,
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password cannot be empty";
                    } else if (value.length < 7) {
                      return "Length of password must be greater than 6";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      password = value.trim();
                    });
                  },
                )),
              ),
            ).pOnly(left: 12, right: 12),
            30.heightBox,
            Container(
              color: Colors.red,
              child: TextButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    try {
                      final newUser = _auth
                          .createUserWithEmailAndPassword(
                              email: email, password: password)
                          .then((_) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: ((context) => VerifyScreen())));
                      });
                    } catch (e) {
                      Text("Invalid Email",
                          style: TextStyle(color: Colors.red, fontSize: 20));
                    }
                  }
                },
                child: Text(
                  "Register",
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
