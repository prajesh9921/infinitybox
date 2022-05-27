import 'package:flutter/material.dart';
import 'package:infynitybox/view/drawer.dart';

const AppBarTitleStyle = TextStyle(color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.w400);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "InfinityBox",
            style: AppBarTitleStyle,
          ),
        ),

        drawer: MyDrawer(),
        ),
      );
  }
}
