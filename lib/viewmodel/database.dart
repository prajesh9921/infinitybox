import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';

class Info {
  final int? id;
  final String? restaurantName;
  final int? boxAdded;
  final String? customerName;
  final int? boxOdered;
  final int? phone;
  final int? status;
  Info({
    this.id,
    this.boxAdded,
    this.restaurantName,
    this.boxOdered,
    this.customerName,
    this.phone,
    this.status,
  });

  factory Info.fromMap(Map<String, dynamic> json) => Info(
    id: json['id'],
    restaurantName: json['restaurantName'],
    boxAdded: json['boxAdded'],
    customerName: json["customerName"],
    boxOdered: json["boxOdered"],
    phone: json["phone"],
    status: json["status"]
  );

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'restaurantName': restaurantName,
      'boxAdded': boxAdded,
      'customerName': customerName,
      'boxOdered': boxOdered,
      'phone': phone,
      'status': status,
    };
  }
}


class DatabaseHelper{

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'Info.db');
    return await openDatabase(
      path,
      version: 1,
    );
  }
}


