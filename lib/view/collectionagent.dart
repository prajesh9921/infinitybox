import 'package:flutter/material.dart';
import 'package:infynitybox/view/collection_agent_style.dart';
import 'package:infynitybox/view/drawer.dart';
import 'package:infynitybox/view/homepage.dart';
import 'package:infynitybox/viewmodel/database.dart';

class CollectionAgent extends StatefulWidget {
  int? quantity;
  String cusname;
  String phone;
  CollectionAgent({Key? key, this.quantity, this.cusname = "InfynityBox", this.phone = "154465465"}) : super(key: key);

  @override
  State<CollectionAgent> createState() => _CollectionAgentState();
}

class _CollectionAgentState extends State<CollectionAgent> {

  void ContainerStatus(int index){
    DataList[index].status = "withcollectionagent";
    var snackBar = SnackBar(
      content: Text("Container ${DataList[index].Cname}, is with Collection Agent Center"),
      action: SnackBarAction(
        label: "Go to received containers",
        onPressed: (){
          Navigator.pushNamed(context, "/received_container");
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        drawer: const MyDrawer(),

        appBar: AppBar(title: const Text("InfynityBox" , style: AppBarTitleStyle,),),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView.builder(
              itemCount: widget.quantity,
              itemBuilder: (BuildContext context, int index) {
                return Container(
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
                        CustomText(tag: "CustomerName", label: widget.cusname,),
                        CustomText(tag: "Phone Number", label: widget.phone),
                        const CustomText(tag: "Quantity", label: "5"),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: (){
                              ContainerStatus(index);
                            },
                            child: Container(
                              padding: paddingInsets,
                              decoration: buttonDecoration,
                              child: const Text("Collect Order", style: TextStyle(color: Colors.white),),
                            ),),)],),);}),),),);}}


