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
    int countt = 0;
    int temp_count = 0;
    int count = 0;

    @override
    void initState(){
      super.initState();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ListCards();
      });
      print(count);
    }

    @override
    void dispose() {
      super.dispose();
    }

    void ListCards() async{
      DataList.forEach((element) {
        if (element.status == "withcollectionagent"){
          setState((){
            count++;
          });
        }
      });
  }

    void ContainerStatus(){
      DataList.forEach((ele) {
        if (ele.status == "withcollectionagent"){
          setState((){
            temp_count ++;
          });
        }
      });
      count = temp_count;
      temp_count = 0;
      print(count);
      print(temp_count);
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
