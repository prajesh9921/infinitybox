import 'package:flutter/material.dart';
import 'package:infynitybox/view/collectionagent.dart';
import 'package:infynitybox/view/drawer.dart';
import 'package:infynitybox/view/homepage.dart';
import 'package:infynitybox/view/order_creation_style.dart';
import 'package:infynitybox/viewmodel/database.dart';
import 'package:provider/provider.dart';

class OrderCreation extends StatefulWidget {
  const OrderCreation({Key? key}) : super(key: key);

  @override
  State<OrderCreation> createState() => _OrderCreationState();
}

class _OrderCreationState extends State<OrderCreation> {

  late var customerName = TextEditingController();
  late var phoneNumber = TextEditingController();
  String? phonenumber;
  String? cusname;

  int count = 0;

  void AddContainers(){
    int limit = DataList.length;
    setState(() {
      if(limit == 0){
        print("Create batch first");
        const snackBar = SnackBar(
            content: Text('Need to create batch first'),
          );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }else if (count < limit){
        count = count + 1;
      }else{
        print("batch limit exceeded");
        const snackBar = SnackBar(
            content: Text('Containers created in batch exceeded'),
          );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
      });
  }

  void ContainerStatus(){
    for(int i = 0; i < count; i++){
      DataList[i].status = "withcustomer";
    }
    debug();
  }

  void debug(){
    DataList.forEach((ele) {
      print(ele.Cname);
      print(ele.status);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,

        appBar: AppBar(
            title: const Text("InfynityBox", style: AppBarTitleStyle,),),
        drawer: const MyDrawer(),

        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // All text boxes and containers
              Container(
                height: MediaQuery.of(context).size.height/1.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                          margin: textBoxPadding,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Customer Name", style: labelStyle,),
                              const SizedBox(height: 5.0,),
                              TextField(
                                controller: customerName,
                                decoration: customerDecoration,
                              ),],)),
                    Container(
                        margin: textBoxPadding,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Phone Number", style: labelStyle,),
                            const SizedBox(height: 5.0,),
                            TextField(
                              decoration: phoneDecoration,
                              controller: phoneNumber,
                            ),],)),
                    Container(
                        margin: textBoxPadding,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Containers", style: labelStyle,),
                            const SizedBox(height: 5.0,),
                             count == 0? const Center(child: Text("""Press "Add Container" to add container"""),): SizedBox(
                              height: 200,
                              child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10.0,
                                  ),
                                  itemCount: count,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Containers(index: index,);
                                  }),
                            )
                          ],)),],),),
              Row(
                children: [
                  Btn(label: "Add Containers", onPress: (){
                    AddContainers();
                    Provider.of<DataNotifier>(context, listen: false).OrderCount(count);
                  },),
                  SizedBox(width: 5.0,),
                  Btn(label: "Create", onPress: (){
                    ContainerStatus();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CollectionAgent(
                        quantity: count,
                        cusname: customerName.text,
                        phone: phoneNumber.text,
                      )));
                  },),
                ],)],),),),);}}




