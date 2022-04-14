
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class IdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color(0XFFF1FAFF),
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[Color(0XFF24C6DC), Color(0XFF514A9D)]),
            ),
            height: 204,
            child: Row(
              children: [
                25.widthBox,
                Container(
                  alignment: Alignment.center,
                  height: 115,
                  width: 115,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFFD6EBF1),
                  ),
                  child: Image.asset(
                    "assets/images/graduated 2.png",
                    alignment: Alignment.center,
                  ),
                ),
                30.widthBox,
                const Text("ASHUTOSH RANA",
                        style: TextStyle(color: Colors.white, fontSize: 18))
                    .pOnly(top: 30),
                Icon(Icons.arrow_back, color: Colors.white, size: 50)
                    .pOnly(bottom: 90, right: 25)
              ],
            ),
          ),
          Column(children: [
            33.heightBox,
            Row(
              children: [
                28.widthBox,
                Text(
                  "Reg. Number        ",
                  style: TextStyle(color: Color(0XFF848282), fontSize: 18),
                ),
                Text(":       20BDS011",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold))
              ],
            ),
            18.heightBox,
            Row(
              children: [
                28.widthBox,
                Text(
                  "Semester              ",
                  style: TextStyle(color: Color(0XFF848282), fontSize: 18),
                ),
                Text(":       4",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold))
              ],
            ),
            18.heightBox,
            Row(
              children: [
                28.widthBox,
                Text(
                  "Branch                  ",
                  style: TextStyle(color: Color(0XFF848282), fontSize: 18),
                ),
                Text(":       DSAI",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold))
              ],
            ),
            18.heightBox,
            Row(
              children: [
                28.widthBox,
                Text(
                  "Batch Period        ",
                  style: TextStyle(color: Color(0XFF848282), fontSize: 18),
                ),
                Text(":       2020-2024",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold))
              ],
            ),
            18.heightBox,
            Row(
              children: [
                28.widthBox,
                Text(
                  "Mail id                   ",
                  style: TextStyle(color: Color(0XFF848282), fontSize: 18),
                ),
                Text(":       20bds011@iiitdwd.ac.in",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold))
              ],
            ),
            18.heightBox,
            Row(
              children: [
                28.widthBox,
                Text(
                  "Father's Name     ",
                  style: TextStyle(color: Color(0XFF848282), fontSize: 18),
                ),
                Text(":       XYZ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold))
              ],
            ),
            18.heightBox,
            Row(
              children: [
                28.widthBox,
                Text(
                  "Faculty Advisor   ",
                  style: TextStyle(color: Color(0XFF848282), fontSize: 18),
                ),
                Text(":       Dr. Sibasankar",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold))
              ],
            ),
            30.heightBox,
            Row(children: [
              28.widthBox,
              Container(
                width: 168,
                height: 35,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Color(0XFF7474BF), Color(0XFF348AC7)]),
                ),
                child: Row(
                  children: [
                    6.widthBox,
                    Image.asset(
                      "assets/images/image 118.png",
                      height: 22,
                      width: 22,
                    ),
                    16.widthBox,
                    Text(
                      "8005700000",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )
                  ],
                ),
              ),
            ]),
            60.heightBox,
            GradientText("INDIAN INSTITUTE OF INFORMATION TECHNOLOGY DHARWAD", 
            colors:[ Color(0XFF005C97), Color(0XFF363795)],style: 
            TextStyle(fontSize: 18,fontWeight:FontWeight.bold,)).pOnly(left: 15)
          ]),
        ]));
  }
}
