import 'package:flutter/material.dart';
import 'package:infynitybox/view/drawer.dart';
import 'package:infynitybox/view/homepage.dart';
import 'package:infynitybox/view/received_container_style.dart';
import 'package:infynitybox/viewmodel/database.dart';


class ReceivedContainer extends StatefulWidget {
  const ReceivedContainer({Key? key}) : super(key: key);

  @override
  State<ReceivedContainer> createState() => _ReceivedContainerState();
}

class _ReceivedContainerState extends State<ReceivedContainer> {
    int count = 0;

    void ContainerStatus(){
      int len = DataList.length;
      for (int i = 0; i < len; i++){
        if(DataList[i].status == "withcollectionagent"){
          setState((){
            count = count + 1;
          });
        }
      }
    }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(

          drawer: const MyDrawer(),

          appBar: AppBar(
            title: const Text("InfinityBox", style: AppBarTitleStyle,),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GestureDetector(
                onTap: (){
                  ContainerStatus();
                },
                child: const Icon(Icons.refresh, color: Colors.black,),
            ),
              ),
            ],
          ),

          body: Padding(
            padding: paddingStyle,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Containers with collection agent list"),
                count == 0 ? Center(child: Text("Press referesh button")) : Expanded(
                  child: ListView.builder(
                  itemCount: count,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: containerMargin,
                      padding: containerPadding,
                      decoration: containerDecoration,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Container", style: textStyle,),
                          Text(DataList[index].Cname.toString()),
                          InkWell(
                            onTap: (){
                              DataList[index].status = "washingCenter";
                              var snackBar = SnackBar(
                                content: Text("Container ${DataList[index].Cname} is in Washing Center"),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            },
                            child: Container(
                              padding: btnPadding,
                              decoration: btnDecoration,
                              child: const Text("Received", style: btnTextStyle),),),],),);}),),],),),));}}
