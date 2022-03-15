import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CV")
      ),
      body: SizedBox(child: Title(color: Vx.blue400,
      child: const Text("Home_Page"))),
    );
  }
}
