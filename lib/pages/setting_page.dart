import 'dart:ui';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children:[
        Image.asset("assets/images/Rectangle 427.png",
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,),
        Container(height: 193,width: MediaQuery. of(context). size. width ,
          decoration:const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/setting background.png",),
            fit: BoxFit.cover)
          ),
          child: Row(children: [
            const SizedBox(width: 23,),
            Image.asset("assets/images/setting icon.png",),
            const SizedBox(width: 141,),
            const Text("SETTINGS",style: TextStyle(color: Color(0XFFFFFFFF),fontSize: 24),),
          ],),
        ),
        Container(height: 470,width: MediaQuery. of(context). size. width,
          decoration:const BoxDecoration(color:Color(0XFFFFFFFF)),
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(padding: const EdgeInsets.all(2),
                child: Container(
                  height: 56,width: MediaQuery. of(context). size. width,
                  decoration:const BoxDecoration(color: Color(0XFFF0F5F5)),
                  child:Row(children: [
                    const SizedBox(width: 9,),
                    Container(height: 45,width: 45,
                    decoration: const BoxDecoration(color: Color(0XFFE4E8E9)),
                    child: Image.asset("assets/images/theme.png",
                      alignment: Alignment.center,
                     ),),
                    const SizedBox(width: 22,),
                    const Text("Theme",style: TextStyle(fontSize:19,color: Colors.black,),),
                    const SizedBox(width: 148,),
                    Row(children: [
                      Container(height: 31,width: 43,
                      decoration: const BoxDecoration(color: Color(0XFFD0D0D0)),
                        child:Image.asset("assets/images/dark.png",height: 22,width: 22,
                        colorBlendMode: BlendMode.multiply,),),
                      Container(color:const Color(0XFFFFFFFF),height: 31,width: 43,
                          child:Image.asset("assets/images/bright.png",height: 24,width: 23,
                          colorBlendMode: BlendMode.multiply,)
                        ),
                    ]),
                  ],)
                ),
              ),
              Padding(padding: const EdgeInsets.all(2),
                child: Container(
                  height: 56,width: MediaQuery. of(context). size. width,
                  decoration:const BoxDecoration(color: Color(0XFFF0F5F5)),
                  child:Row(children: [
                    const SizedBox(width: 9,),
                    Container(height: 45,width: 45,
                    decoration: const BoxDecoration(color: Color(0XFFE4E8E9)),
                    child: Image.asset("assets/images/noti.png",
                      alignment: Alignment.center,
                     ),),
                    const SizedBox(width: 22,),
                    const Text("Notifications",style: TextStyle(fontSize:19,color: Colors.black,),),
                    const SizedBox(width: 120,),
                    Container(height: 22,width: 48,
                    decoration:const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Color(0XFF5A8BA4)),
                    child: Row(children:[
                      const SizedBox(width: 30,),
                      Image.asset("assets/images/Ellipse 544.png",height:18,width:18)
                    ])
                    )
                  ],)
                ),
              ),
              Padding(padding: const EdgeInsets.all(2),
                child: Container(
                  height: 56,width: MediaQuery. of(context). size. width,
                  decoration:const BoxDecoration(color: Color(0XFFF0F5F5)),
                  child:Row(children: [
                    const SizedBox(width: 9,),
                    Container(height: 45,width: 45,
                    decoration: const BoxDecoration(color: Color(0XFFE4E8E9)),
                    child: Image.asset("assets/images/author.png",
                      alignment: Alignment.center,
                     ),),
                    const SizedBox(width: 22,),
                    const Text("About authors",style: TextStyle(fontSize:19,color: Colors.black,),),
                  ],)
                ),
              ),
              Padding(padding:const EdgeInsets.all(2),
                child: Container(
                  height: 56,width: MediaQuery. of(context). size. width,
                  decoration:const BoxDecoration(color: Color(0XFFF0F5F5)),
                  child:Row(children: [
                    const SizedBox(width: 9,),
                    Container(height: 45,width: 45,
                    decoration: const BoxDecoration(color: Color(0XFFE4E8E9)),
                    child: Image.asset("assets/images/app version.png",
                      alignment: Alignment.center,
                     ),),
                    const SizedBox(width: 22,),
                    const Text("App version",style: TextStyle(fontSize:19,color: Colors.black,),),
                    const SizedBox(width: 142,),
                    const Text("V 3.2.1",style: TextStyle(fontSize:15,color: Color(0XFF8D8D8D)),)
                  ],)
                ),
              ),
              Padding(padding: const EdgeInsets.all(2),
                child: Container(
                  height: 56,width: MediaQuery. of(context). size. width,
                  decoration:const BoxDecoration(color: Color(0XFFF0F5F5)),
                  child:Row(children: [
                    const SizedBox(width: 9,),
                    Container(height: 45,width: 45,
                    decoration: const BoxDecoration(color: Color(0XFFE4E8E9)),
                    child: Image.asset("assets/images/guide.png",
                      alignment: Alignment.center,
                     ),),
                    const SizedBox(width: 22,),
                    const Text("Guide",style: TextStyle(fontSize:19,color: Colors.black,),),
                  ],)
                ),
              ),
              Padding(padding: const EdgeInsets.all(2),
                child: Container(
                  height: 56,width: MediaQuery. of(context). size. width,
                  decoration:const BoxDecoration(color: Color(0XFFF0F5F5)),
                  child:Row(children: [
                    const SizedBox(width: 9,),
                    Container(height: 45,width: 45,
                    decoration: const BoxDecoration(color: Color(0XFFE4E8E9)),
                    child: Image.asset("assets/images/share.png",
                      alignment: Alignment.center,
                     ),),
                    const SizedBox(width: 22,),
                    const Text("Share app",style: TextStyle(fontSize:19,color: Colors.black,),),
                  ],)
                ),
              ),
              Padding(padding:const EdgeInsets.all(2),
                child: Container(
                  height: 56,width: MediaQuery. of(context). size. width,
                  decoration:const BoxDecoration(color: Color(0XFFF0F5F5)),
                  child:Row(children: [
                    const SizedBox(width: 9,),
                    Container(height: 45,width: 45,
                    decoration: const BoxDecoration(color: Color(0XFFE4E8E9)),
                    child: Image.asset("assets/images/rate.png",
                      alignment: Alignment.center,
                     ),),
                    const SizedBox(width: 22,),
                    const Text("Rate us",style: TextStyle(fontSize:19,color: Colors.black,),),
                  ],)
                ),
              ),
              Padding(padding:const EdgeInsets.all(2),
                child: Container(
                  height: 56,width: MediaQuery. of(context). size. width,
                  decoration:const BoxDecoration(color: Color(0XFFF0F5F5)),
                  child:Row(children: [
                    const SizedBox(width: 9,),
                    Container(height: 45,width: 45,
                    decoration: const BoxDecoration(color: Color(0XFFE4E8E9)),
                    child: Image.asset("assets/images/logout.png",
                      alignment: Alignment.center,
                     ),),
                    const SizedBox(width: 22,),
                    const Text("Logout",style: TextStyle(fontSize:19,color: Colors.black,),),
                  ],)
                ),
              ),
            ],),
          ),
          ),
          Container(alignment: Alignment.bottomCenter,height: 65,
          width: MediaQuery. of(context). size. width ,
            decoration:const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/Rectangle bottom.png",),
              fit: BoxFit.cover)
            ),
            child: Row(children:[
              52.widthBox,
              Container(height:37,width: 37,
              decoration: BoxDecoration(color:const Color(0XFFF1FAFF),
              borderRadius: BorderRadius.circular(20)),
              child:Image.asset("assets/images/home.png",
              alignment: Alignment.center,)),
              52.widthBox,
              Container(height:37,width: 37,
              decoration: BoxDecoration(color:const Color(0XFFF1FAFF),
              borderRadius: BorderRadius.circular(20)),
              child:Image.asset("assets/images/stopwatch.png",
              alignment: Alignment.center,)),
              52.widthBox,
              Container(height:37,width: 37,
              decoration: BoxDecoration(color:const Color(0XFFF1FAFF),
              borderRadius: BorderRadius.circular(20)),
              child:Image.asset("assets/images/bell.png",
              alignment: Alignment.center,)),
              47.widthBox,
              Container(height:41,width: 41,
              decoration: BoxDecoration(color:const Color(0XFFE7EBF8),
              borderRadius: BorderRadius.circular(20)),
              child:Image.asset("assets/images/setting.png",
              alignment: Alignment.center,)).pOnly(bottom: 26),
            ]), 
          ).pOnly(top: 7)
      ]),
    );
  }
}
