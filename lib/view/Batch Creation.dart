import 'package:flutter/material.dart';
import 'package:infynitybox/view/drawer.dart';
import 'package:infynitybox/view/batch_creation_style.dart';
import 'package:infynitybox/view/homepage.dart';
import 'package:infynitybox/viewmodel/database.dart';


class BatchCretion extends StatefulWidget {
  const BatchCretion({Key? key}) : super(key: key);

  @override
  State<BatchCretion> createState() => _BatchCretionState();
}

class _BatchCretionState extends State<BatchCretion> {

  final restaurantController = TextEditingController();
  late var quantityControler = TextEditingController(text: count.toString());
  ContainerData Cdata = ContainerData();
  int count = 0;


  void AddContainers(){
    setState(() {
      count = count + 1;
      quantityControler.text = count.toString();
    });
  }

  void AddData(){
    int loop = count;
    for (int i = 0; i <= loop; i++){
      String ContainerName = "SCT" + i.toString();
      var data = ContainerData();
      data.Rname = restaurantController.text;
      data.quantity = int.parse(quantityControler.text);
      data.Cname = ContainerName;
      data.status = "in restaurant";
      DataList.add(data);
    }
  }


  void dispose() {
    // Clean up the controller when the widget is disposed.
    restaurantController.dispose();
    quantityControler.dispose();
    quantityControler = TextEditingController(text: count.toString());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        drawer: const MyDrawer(),

        appBar: AppBar(
          title: const Text("InfynityBox", style: AppBarTitleStyle,),),

        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              // Text boxes and containers
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Restaurant",
                              style: label,
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            TextField(
                              decoration: textBox,
                              controller: restaurantController,
                            ),
                          ],
                        )),
                    const SizedBox(height: 15.0,),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Quantity", style: label,),
                            const SizedBox(height: 5.0,),
                            TextField(decoration: textbox1,
                              controller: quantityControler,
                            ),],)),
                    const SizedBox(height: 15.0,),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Containers", style: label,),
                            const SizedBox(height: 5.0,),
                            count == 0? Center(child: Text("""Please add containers by pressing "Add Containers"""),) : SizedBox(
                              height: 200,
                              child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10.0,
                                  ),
                                  itemCount: int.parse(quantityControler.text),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Containers(index: index,);
                                  }),
                            )
                          ],
                        )),
                  ],
                ),
              ),
              // Buttons (Add Container and create)
              Row(
                children: [
                  Button(label: "Add Containers", onPress: (){
                    AddContainers();
                  },),
                  const SizedBox(width: 5.0,),
                  Button(label: "Create", onPress: (){
                    AddData();
                    var snackBar = SnackBar(
                        content: Text("Batch Created of ${count} containers"),
                      action: SnackBarAction(
                        label: "Go to order page",
                        onPressed: (){
                          Navigator.pushNamed(context, '/order_creation');
                        },
                      ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },),
                  const SizedBox(width: 5.0,),
                  Button(label: "Check", onPress: (){
                    for(int i = 0; i < DataList.length; i++){
                      print("the Container value is: ${DataList[i].status}");
                    }
                  },)

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}








