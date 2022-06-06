import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataNotifier extends ChangeNotifier{

  String ordername = "";
  int phone = 0;
  int orderCreatedCount = 0;

  void OrderCount(int newCount){
    orderCreatedCount = newCount;
    notifyListeners();
  }

  void OrderName(String newName){
    ordername = newName;
    notifyListeners();
  }

  void PhoneNumber(int newNum){
    phone = newNum;
    notifyListeners();
  }



}


class ContainerData{
  String? Rname;
  int? quantity;
  String? Cname;
  String? status;
  ContainerData({this.Rname, this.quantity, this.Cname, this.status});
}

List<ContainerData> DataList = [];

