import 'package:flutter/material.dart';
import 'package:infynitybox/view/drawer.dart';
import 'package:infynitybox/view/homepage.dart';
import 'package:infynitybox/view/received_container_style.dart';

class ReceivedContainer extends StatelessWidget {
  const ReceivedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

          drawer: const MyDrawer(),

          appBar: AppBar(title: const Text("InfinityBox", style: AppBarTitleStyle,),),

          body: Padding(
            padding: paddingStyle,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Containers with collection agent list"),
                Expanded(
                  child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: containerMargin,
                      padding: containerPadding,
                      decoration: containerDecoration,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Container", style: textStyle,),
                          Text("SCT10$index"),
                          InkWell(
                            child: Container(
                              padding: btnPadding,
                              decoration: btnDecoration,
                              child: const Text("Received", style: btnTextStyle),),),],),);}),),],),),));}}
