// import 'dart:io';

// import 'package:excel/excel.dart';
import 'package:flutter/material.dart'; 

class Mydatabase extends StatefulWidget {
  @override
  _MydatabaseState createState() => _MydatabaseState();
}

class _MydatabaseState extends State<Mydatabase> {

  // var file = "Path_to_pre_existing_Excel_File/excel_file.xlsx";
  // var bytes = File(file).readAsBytesSync();
  // var excel = Excel.decodeBytes(bytes);
    
  //   for (var table in excel.tables.keys) {
  //     print(table); //sheet Name
  //     print(excel.tables[table].maxCols);
  //     print(excel.tables[table].maxRows);
  //     for (var row in excel.tables[table].rows) {
  //       print("$row");
  //     }
  //   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Database"),
      ),
      body: Container(),
    );
  }
}