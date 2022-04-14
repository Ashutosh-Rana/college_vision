import 'package:college_vision/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AttendancePage extends StatefulWidget {
  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFD1DCEB),
      appBar: AppBar(
        backgroundColor: Color(0XFF2A3856),
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            "COLLEGE VISION",
            style: TextStyle(fontSize: 20, color: Color(0XFFF1F8FF)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            19.heightBox,
            Container(
                height: 36,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0XFF19629D)),
                child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "ATTENDANCE",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ))).pOnly(left: 5, right: 5),
            Container(
              height: 218,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XFFF1FAFF)),
              child: Column(children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "OVER-ALL",
                    style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold),
                  ).pOnly(top: 8, left: 9),
                ),
                Row(
                  children: [
                    CircularPercentIndicator(
                      radius: 77,
                      lineWidth: 20,
                      animation: true,
                      percent: 0.86,
                      center: Text(
                        "86%",
                        style: TextStyle(fontSize: 36),
                      ),
                      circularStrokeCap: CircularStrokeCap.butt,
                      backgroundColor: Color(0XFFD4E9F1),
                      progressColor: Colors.red,
                    ).pOnly(top: 10, left: 20),
                    36.widthBox,
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Percentage  :  86%",style: TextStyle(
                        color: Color(0XFF6C5D5D),fontSize: 15
                      ),),
                      3.heightBox,
                      Text("Strength       :  Good",style: TextStyle(
                        color: Color(0XFF6C5D5D),fontSize: 15
                      ),),
                      3.heightBox,
                      Text("Eligible         :  Yes",style: TextStyle(
                        color: Color(0XFF6C5D5D),fontSize: 15
                      ),)
                    ],)
                  ],
                ),
              ]),
            ).p(5),
            Container(
              height:437,width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0XFFF1FAFF),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(children: [
                Row(children: [
                  Text("SUBJECT-WISE",style: TextStyle(
                    color:Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 14,fontWeight: FontWeight.bold
                  ),).pOnly(top: 8, left: 9),
                  203.widthBox,
                  Text("Detailed",style: TextStyle(
                    color:Color(0XFF19799D),
                    fontSize: 15,
                    decoration: TextDecoration.underline
                  ),).pOnly(top: 8)
                ],),
                8.heightBox,
                Row(
                  children: [
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: (MediaQuery.of(context).size.width/3)-8,
                    color: Color(0XFF19629D),  
                    child: Text("SUBJECT",style:TextStyle(
                      color: Colors.white,
                      fontSize: 17
                    ))
                  ).pOnly(left: 6),
                  1.widthBox,
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: MediaQuery.of(context).size.width/3-8,
                    color: Color(0XFF19629D),  
                    child: Text("PERCENTAGE",style:TextStyle(
                      color: Colors.white,
                      fontSize: 17
                    ))
                  ),
                  1.widthBox,
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: MediaQuery.of(context).size.width/3-8,
                    color: Color(0XFF19629D),  
                    child: Text("ELIGIBLE",style:TextStyle(
                      color: Colors.white,
                      fontSize: 17
                    ))
                  )
                ],),
                2.heightBox,
                Row(
                  children: [
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: (MediaQuery.of(context).size.width/3)-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("OSCC",style:TextStyle(
                      color: Color(0XFF0000000),
                      fontSize: 17
                    ))
                  ).pOnly(left: 6),
                  1.widthBox,
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: MediaQuery.of(context).size.width/3-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("88%",style:TextStyle(
                      color: Color(0XFF0000000),
                      fontSize: 17
                    ))
                  ),
                  1.widthBox,
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: MediaQuery.of(context).size.width/3-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("Yes",style:TextStyle(
                      color: Colors.black,
                      fontSize: 17
                    ))
                  )
                ],),
                2.heightBox,
                Row(
                  children: [
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: (MediaQuery.of(context).size.width/3)-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("SE",style:TextStyle(
                      color: Color(0XFF0000000),
                      fontSize: 17
                    ))
                  ).pOnly(left: 6),
                  1.widthBox,
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: MediaQuery.of(context).size.width/3-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("83%",style:TextStyle(
                      color: Color(0XFF0000000),
                      fontSize: 17
                    ))
                  ),
                  1.widthBox,
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: MediaQuery.of(context).size.width/3-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("Yes",style:TextStyle(
                      color: Colors.black,
                      fontSize: 17
                    ))
                  )
                ],),
                2.heightBox,
                Row(
                  children: [
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: (MediaQuery.of(context).size.width/3)-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("LA",style:TextStyle(
                      color: Color(0XFF0000000),
                      fontSize: 17
                    ))
                  ).pOnly(left: 6),
                  1.widthBox,
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: MediaQuery.of(context).size.width/3-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("80%",style:TextStyle(
                      color: Color(0XFF0000000),
                      fontSize: 17
                    ))
                  ),
                  1.widthBox,
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: MediaQuery.of(context).size.width/3-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("Yes",style:TextStyle(
                      color: Colors.black,
                      fontSize: 17
                    ))
                  )
                ],),
                2.heightBox,
                Row(
                  children: [
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: (MediaQuery.of(context).size.width/3)-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("DBMS",style:TextStyle(
                      color: Color(0XFF0000000),
                      fontSize: 17
                    ))
                  ).pOnly(left: 6),
                  1.widthBox,
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: MediaQuery.of(context).size.width/3-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("85%",style:TextStyle(
                      color: Color(0XFF0000000),
                      fontSize: 17
                    ))
                  ),
                  1.widthBox,
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: MediaQuery.of(context).size.width/3-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("Yes",style:TextStyle(
                      color: Colors.black,
                      fontSize: 17
                    ))
                  )
                ],),
                2.heightBox,
                Row(
                  children: [
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: (MediaQuery.of(context).size.width/3)-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("GBP",style:TextStyle(
                      color: Color(0XFF0000000),
                      fontSize: 17
                    ))
                  ).pOnly(left: 6),
                  1.widthBox,
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: MediaQuery.of(context).size.width/3-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("45%",style:TextStyle(
                      color: Color(0XFF0000000),
                      fontSize: 17
                    ))
                  ),
                  1.widthBox,
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: MediaQuery.of(context).size.width/3-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("No",style:TextStyle(
                      color: Colors.black,
                      fontSize: 17
                    ))
                  )
                ],),
                2.heightBox,
                Row(
                  children: [
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: (MediaQuery.of(context).size.width/3)-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("IST",style:TextStyle(
                      color: Color(0XFF0000000),
                      fontSize: 17
                    ))
                  ).pOnly(left: 6),
                  1.widthBox,
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: MediaQuery.of(context).size.width/3-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("92%",style:TextStyle(
                      color: Color(0XFF0000000),
                      fontSize: 17
                    ))
                  ),
                  1.widthBox,
                  Container(alignment: Alignment.center,
                    height: 48,
                    width: MediaQuery.of(context).size.width/3-8,
                    color: Color(0XFFCDE9FF),  
                    child: Text("Yes",style:TextStyle(
                      color: Colors.black,
                      fontSize: 17
                    ))
                  )
                ],),
              ],),
            ).pOnly(left: 5,right: 5),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
