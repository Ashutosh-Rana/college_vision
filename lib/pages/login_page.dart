//import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

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
                  color: Colors.blueGrey,
                  //color: Colors.deepPurple.withOpacity(1),
                  child: Column(
                    children: [
                      10.heightBox,
                      Text("Welcome $name",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          )),
                      10.heightBox,
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 32.0),
                        child: Column(
                          children: [
                            Container(
                              // height: 65,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                    "assets/images/username leading.png"),
                                title: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: "Enter Username",
                                    //hintStyle: TextStyle(fontSize: 30),
                                    labelText: "Username",
                                    //labelStyle: TextStyle(fontSize: 30),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Username cannot be empty";
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    name = value;
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                            20.heightBox,
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                    "assets/images/password_leading.png"),
                                trailing:
                                    Image.asset("assets/images/invisible.png"),
                                title: TextFormField(
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    hintText: "Enter Password",
                                    labelText: "Password",
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Password cannot be empty";
                                    } else if (value.length < 7) {
                                      return "Length of password must be greater than 6";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                40.widthBox,
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, MyRoutes.signupRoute);
                                  },
                                  child: Container(
                                    decoration:const BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    height: 40,
                                    width: 90,
                                    alignment: Alignment.center, 
                                    child: const Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        fontSize: 24,
                                      ),
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
                                    onTap: () => moveToHome(context),
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
                      ),
                      20.heightBox,
                      Align(
                        alignment:const Alignment(-0.99, 1.2),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              decoration:const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              ),
                              height: 60,
                              width: 70,
                              child: Image.asset("assets/images/login_corner.png",
                              width: 30,height: 30,),
                            ),
                          ),
                          )
                    ],
                  ),),
            ],
          ),
        ),
      ),
    );
  }
}
