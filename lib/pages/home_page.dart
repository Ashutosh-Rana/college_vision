import 'package:college_vision/pages/login_page.dart';
import 'package:college_vision/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final auth = FirebaseAuth.instance;
  String dropdownValue = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(dropdownValue)),
        body: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/abc.jpg",
                    ))),
            child: Column(children:[
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.white,
                  ),
                  height: 60,
                  width: 120,
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                        switch (newValue) {
                          case "Home":
                            dropdownValue = "Home";
                            break;
                          case "Two":
                            dropdownValue = "Two";
                            break;
                          case "Free":
                            dropdownValue = "Free";
                            break;
                          case "Four":
                            dropdownValue = "Four";
                            break;
                        }
                      });
                    },
                    items: <String>['Home', 'Two', 'Free', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ).pOnly(top: 10, left: 10),
              ),
              60.heightBox,
              InkWell(
                onTap: () => Navigator.pushNamed(context, "/scan_qr"),
                child: Container(
                  height: 60,width:MediaQuery.of(context).size.width-30,
                  alignment: Alignment.center,
                  decoration:const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child:const Text("Scan QR code",style: TextStyle(
                    fontSize:30,color:Colors.green
                  ),),
                ),
              ),
              20.heightBox,
              InkWell(
                onTap: () => Navigator.pushNamed(context, "/generate_qr"),
                child: Container(
                  height: 60,width:MediaQuery.of(context).size.width-30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Text("Generate QR code",style: TextStyle(
                    fontSize:30,color:Colors.green
                  ),),
                ),
              ),
              
            ])),
        drawer: Drawer(
          backgroundColor: Colors.grey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(
                      color: Color(0XFFE4EBFA),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/login_logo.png",
                          alignment: Alignment.center,
                          fit: BoxFit.cover,
                        ).pOnly(right: 40),
                        Text(
                          'COLLEGE\n VISION',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 24,
                          ),
                        ).pOnly(right: 3),
                      ],
                    )),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, MyRoutes.idRoute),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    tileColor: Color(0XFFCDE9FF),
                    leading: Icon(
                      Icons.account_balance,
                    ),
                    title: Text(
                      "ID Profile",
                      style: TextStyle(fontSize: 18),
                    ),
                  ).p(3),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, MyRoutes.attendanceRoute),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    tileColor: Color(0XFFCDE9FF),
                    leading: Icon(Icons.class_),
                    title: Text(
                      "Attendance Report",
                      style: TextStyle(fontSize: 18),
                    ),
                  ).p(3),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, MyRoutes.calendarRoute),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    tileColor: Color(0XFFCDE9FF),
                    leading: Icon(
                      Icons.calendar_month,
                    ),
                    title: Text(
                      "Academic Calendar",
                      style: TextStyle(fontSize: 18),
                    ),
                  ).p(3),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, MyRoutes.projectRoute),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    tileColor: Color(0XFFCDE9FF),
                    leading: Icon(
                      Icons.note,
                    ),
                    title: Text(
                      "Projects",
                      style: TextStyle(fontSize: 18),
                    ),
                  ).p(3),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, MyRoutes.settingRoute),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    tileColor: Color(0XFFCDE9FF),
                    leading: Icon(Icons.settings),
                    title: Text(
                      "Settings",
                      style: TextStyle(fontSize: 18),
                    ),
                  ).p(3),
                ),
                InkWell(
                  onTap: () {
                    auth.signOut();
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: ((context) => LoginPage())));
                  },
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    tileColor: Color(0XFFCDE9FF),
                    leading: Icon(Icons.logout),
                    title: Text(
                      "Logout",
                      style: TextStyle(fontSize: 18),
                    ),
                  ).p(3),
                )
              ],
            ),
          ),
        ));
  }
}
