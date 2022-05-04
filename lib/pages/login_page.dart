//import 'package:first_app/utils/routes.dart';
import 'package:college_vision/pages/reset_page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = "";
  String _password = "";
  final auth = FirebaseAuth.instance;
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible=false;

  // void initState() {
  //   _passwordVisible = false;
  // }

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      //color: context.canvasColor,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0XFFE4EBFA),
            ),
            child: Column(
              children: [
                80.heightBox,
                Image.asset(
                  "assets/images/login_logo.png",
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                ),
                RichText(
                  text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: "C",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text: "ollege",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: " V",
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "ISION",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ]),
                ),
                const SizedBox(
                  height: 42,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: const Color(0XFF2A3856),
                  //color: Colors.deepPurple.withOpacity(1),
                  child: Column(
                    children: [
                      10.heightBox,
                      Text("Welcome $_email",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          )),
                      20.heightBox,
                      Column(
                        children: [
                          Container(
                            height: 56,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                                    _email = value.trim();
                                  });
                                },
                              ),
                            ),
                          ).pOnly(left: 12, right: 12),
                          20.heightBox,
                          Container(
                            height: 56,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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

                                  suffixIcon: IconButton(iconSize: 44,
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
                                    _password = value.trim();
                                  });
                                },
                              )),
                            ),
                          ).pOnly(left: 12, right: 12),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              40.widthBox,
                              TextButton(
                                style: TextButton.styleFrom(
                                    primary: const Color(0XFF2A3856)),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, MyRoutes.signupRoute);
                                },
                                child: Container(
                                  height: 40,
                                  width: 90,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.white),
                                  ),
                                ),
                              ),
                              40.widthBox,
                              Material(
                                borderRadius: BorderRadius.circular(
                                    changeButton ? 50 : 8),
                                // ignore: deprecated_member_use
                                //color: context.theme.buttonColor,
                                child: InkWell(
                                  onTap: () {
                                    auth
                                        .signInWithEmailAndPassword(
                                            email: _email, password: _password)
                                        .then((_) {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  HomePage())));
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: const Duration(seconds: 1),
                                    height: 40,
                                    width: changeButton ? 50 : 90,
                                    alignment: Alignment.center,
                                    child: changeButton
                                        ? const Icon(
                                            Icons.done,
                                            color: Colors.orange,
                                          )
                                        : const Text(
                                            "LOGIN",
                                            style: TextStyle(
                                              color: Colors.black,
                                              //fontWeight: FontWeight.bold,
                                              fontSize: 24,
                                            ),
                                          ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      20.heightBox,
                      Align(
                        alignment: const Alignment(-0.99, 1.2),
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ResetPage()));
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(16)),
                              ),
                              height: 60,
                              width: 70,
                              child: Image.asset(
                                "assets/images/login_corner.png",
                                width: 30,
                                height: 30,
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
