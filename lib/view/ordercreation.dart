import 'package:flutter/material.dart';
import 'package:infynitybox/view/drawer.dart';
import 'package:infynitybox/view/homepage.dart';
import 'package:infynitybox/view/order_creation_style.dart';

class OrderCreation extends StatefulWidget {
  const OrderCreation({Key? key}) : super(key: key);

  @override
  State<OrderCreation> createState() => _OrderCreationState();
}

class _OrderCreationState extends State<OrderCreation> {
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
                              TextField(decoration: customerDecoration,),],)),
                    Container(
                        margin: textBoxPadding,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Phone Number", style: labelStyle,),
                            const SizedBox(height: 5.0,),
                            TextField(decoration: phoneDecoration,),],)),
                    Container(
                        margin: textBoxPadding,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Containers", style: labelStyle,),
                            const SizedBox(height: 5.0,),
                            SizedBox(
                              height: 200,
                              child: GridView.count(
                                  primary: false,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  crossAxisCount: 3,
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  children: const <Widget>[
                                    Containers(),
                                    Containers(),
                                    Containers(),
                                    Containers(),
                                  ]),)],)),],),),
              Row(
                children: const [
                  Btn(label: "Add Containers",),
                  SizedBox(width: 5.0,),
                  Btn(label: "Create",),
                ],)],),),),);}}




