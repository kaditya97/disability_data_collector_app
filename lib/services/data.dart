import 'dart:convert';

import 'package:disability/databasebase/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Data extends StatefulWidget {
  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    dynamic todo = ModalRoute.of(context).settings.arguments;
    final database = Provider.of<MyDatabase>(context);
    final img = todo["image"][0];
    String imgString = base64Encode(img.readAsBytesSync());
    // ignore: missing_required_param
    final task = Task(
      img: imgString,
      district: todo["district"],
      name: int.parse(todo["wardNo"]),
      surveyDate: todo["surveyDate"].toString(),
      personName: todo["personName"],
      birthDate: todo["birthDate"].toString(),
      gender: todo["gender"],
      currentAddress: todo["currentAddress"],
      parmanentAddress: todo["parmanentAddress"],
      careTaker: todo["careTaker"],
      formSpeaker: todo["formSpeaker"],
      formSpeakerRelation: todo["formSpeakerRelation"],
    );
    database.insertTask(task);
    return Scaffold(
      body: ListView.builder(
        itemCount: todo.length,
        itemBuilder: (context, index) {
          final item = todo["district"];
          final img = base64Decode(imgString);
          return ListTile(
            leading: Image.memory(img),
            title: Text(item),
            subtitle: Text(todo["surveyDate"]),
          );
        },
      ),
    );
  }
}
