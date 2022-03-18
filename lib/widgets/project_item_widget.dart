import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:college_vision/models/project.dart';

class ProjectItemWidget extends StatelessWidget {
  final ProjectItem? item;
  ProjectItemWidget({
    Key? key,
    this.item,
  })  : assert(item != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(height: 107,
      child: Card(
        shape:const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(children: [
          Container(
            // alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              color: Color(int.parse(item!.color)),
            ),
            height: 85,
            width: 78,
            child: Column(
              children: [
                Text(item!.subjectName,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25))
                    .pOnly(top: 2),
                Image.asset(
                  item!.image,height:40,width: 40,
                  color: Color(int.parse(item!.color)),
                  colorBlendMode: BlendMode.multiply,
                ),
              ],
            ),
            //child: Image.asset("assets/images/IST.jpg").p(2),
          ),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                12.widthBox,
                const Icon(
                  Icons.circle,
                  size: 10,
                ).pOnly(bottom: 7),
                8.widthBox,
                Text(
                  item!.projectName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ).pOnly(bottom: 7 ),
                const Spacer(),
                Image.asset(
                  "assets/images/down.png",
                  height: 25,
                  width: 25,
                ).pOnly(bottom: 5),
                
              ]),
              const Divider(
                 color: Colors.red, height: 0, thickness: 2, endIndent: 30).pOnly(bottom: 5),
              //5.heightBox,
              Text("DEADLINE  :  ${item!.deadline}").pOnly(left: 12),
              //3.heightBox,
              Text("STATUS      :   ${item!.status}").pOnly(left: 12),
            ]),
          ),
        ]).p(10),
      ).pOnly(bottom: 8,left: 8,right: 8),
    );
  }
}
