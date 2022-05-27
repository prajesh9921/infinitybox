import 'package:flutter/material.dart';
import 'package:infynitybox/view/drawer.dart';
import 'package:infynitybox/view/batch_creation_style.dart';
import 'package:infynitybox/view/homepage.dart';


class BatchCretion extends StatefulWidget {
  const BatchCretion({Key? key}) : super(key: key);

  @override
  State<BatchCretion> createState() => _BatchCretionState();
}

class _BatchCretionState extends State<BatchCretion> {

  final restaurantController = TextEditingController();
  final quantityControler = TextEditingController();

  void dispose() {
    // Clean up the controller when the widget is disposed.
    restaurantController.dispose();
    quantityControler.dispose();
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
                            SizedBox(
                              height: 200,
                              child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10.0,
                                  ),
                                  itemCount: int.tryParse(quantityControler.text),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return int.tryParse(quantityControler.text) == null ? Text("No containers added") : Containers(index: index,);
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
                  Button(label: "Add Containers", onPress: (){},),
                  SizedBox(width: 5.0,),
                  Button(label: "Create",),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}








