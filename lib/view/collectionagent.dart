import 'package:flutter/material.dart';
import 'package:infynitybox/view/collection_agent_style.dart';
import 'package:infynitybox/view/drawer.dart';
import 'package:infynitybox/view/homepage.dart';

class CollectionAgent extends StatefulWidget {
  const CollectionAgent({Key? key}) : super(key: key);

  @override
  State<CollectionAgent> createState() => _CollectionAgentState();
}

class _CollectionAgentState extends State<CollectionAgent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        drawer: const MyDrawer(),

        appBar: AppBar(title: const Text("InfynityBox" , style: AppBarTitleStyle,),),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Expanded(
                  child: Container(
                    height: 120.0,
                    margin: marginInsets,
                    padding: paddingInsets,
                    decoration: BoxDecoration(
                      color: const Color(0xF0F0F0AB),
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomText(tag: "CustomerName", label: "InfynityBox",),
                        const CustomText(tag: "Phone Number", label: "565355555"),
                        const CustomText(tag: "Quantity", label: "5"),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            child: Container(
                              padding: paddingInsets,
                              decoration: buttonDecoration,
                              child: const Text("Collect Order", style: TextStyle(color: Colors.white),),
                            ),),)],),),);}),),),);}}


