//import 'package:flutter/gestures.dart';
import 'dart:convert';

import 'package:college_vision/models/project.dart';
import 'package:college_vision/utils/routes.dart';
import 'package:college_vision/widgets/bottom_nav_bar.dart';
import 'package:college_vision/widgets/project_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final projectJson =
        await rootBundle.loadString("assets/files/projects.json");
    final decodedData = jsonDecode(projectJson);
    var projectsData = decodedData["projects"];
    ProjectModel.items = List.from(projectsData)
        .map<ProjectItem>((item) => ProjectItem.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Material(color: Colors.pink,
        child: Column(
          children: [
      Container(
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.red,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: InkWell(
                      onTap: () => Navigator.pushNamed(context, MyRoutes.homeRoute),
                      child: Image.asset("assets/images/PRO.png"))),
              ),
              const WidthBox(15),
              Align(
                alignment: Alignment.center,
                // alignment: Alignment(0.11, 0.25),
                child: const Text("SEMESTER 4 PROJECT WORKS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18))
                    .pOnly(top: 25),
              ),
            ],
          )),
          
      ProjectModel.items != null && ProjectModel.items!.isNotEmpty
          ? SizedBox(
              height: 600,
              child:DecoratedBox(decoration:const BoxDecoration(
                color: Colors.grey,
              ),
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 25),
                shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: ProjectModel.items!.length,
                  itemBuilder: (context, index) {
                    return ProjectItemWidget(
                      item: ProjectModel.items![index],
                    );
                  })))
          : const Center(
              child: CircularProgressIndicator(),
            ),
          //     child: ListView.builder(
          //         scrollDirection: Axis.vertical,
          //         itemCount: ProjectModel.items!.length,
          //         itemBuilder: (context, index) {
          //           return ProjectItemWidget(
          //             item: ProjectModel.items![index],
          //           );
          //         }))
          // : const Center(
          //     child: CircularProgressIndicator(),
          //   ),
      Container(
        height: 48,
        width: 300,
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Row(
          children: [
            30.widthBox,
            Container(
              height: 36,
              width: 130,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: const Align(
                  alignment: Alignment.center, child: Text("PROJECTS")),
            ),
            Container(
              height: 36,
              width: 130,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: const Align(
                  alignment: Alignment.center, child: Text("TEAMS")),
            ),
          ],
        ),
      ).pOnly(top: 16),
    ]));
  }
}
