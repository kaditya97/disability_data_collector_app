import 'dart:convert';

import 'package:disability/databasebase/database.dart';
import 'package:flutter/material.dart';
import 'package:disability/Screens/add_data.dart';
import 'package:disability/drawer.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = Text("Disability(अपाङता)");
  bool valueFromAddEvent = false;

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      title: _appBarTitle,
      actions: <Widget>[
        IconButton(
          icon: _searchIcon,
          onPressed: () {},
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  _awaitReturnValueFromAddEvent() async {
    await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AddData(),
        ));

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildBar(context),
      drawer: CustomDrawer(),
      body: Column(
        children: <Widget>[
          Expanded(child: _buildTaskList(context)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _awaitReturnValueFromAddEvent();
        },
        tooltip: 'Add Data',
        child: Icon(Icons.add),
      ),
    );
  }

  StreamBuilder<List<Task>> _buildTaskList(BuildContext context) {
    final database = Provider.of<MyDatabase>(context);
    return StreamBuilder(
      stream: database.watchAllTasks(),
      builder: (context, AsyncSnapshot<List<Task>> snapshot) {
        final tasks = snapshot.data ?? List();

        return ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (_, index) {
            final itemTask = tasks[index];
            return _buildListItem(itemTask, database);
          },
        );
      },
    );
  }

  Widget _buildListItem(Task itemTask, MyDatabase database) {
    final img = base64Decode(itemTask.img);
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () => database.deleteTask(itemTask),
        )
      ],
      child: ListTile(
        leading: Image.memory(img),
            title: Text(itemTask.personName),
            subtitle: Text(itemTask.surveyDate),
      ),
      // child: CheckboxListTile(
      //   title: Text(itemTask.personName),
      //   subtitle: Text(itemTask.surveyDate?.toString() ?? 'No date'),
      //   value: itemTask.nationalIdentityCard,
      //   onChanged: (newValue) {
      //     database.updateTask(itemTask.copyWith(nationalIdentityCard: newValue));
      //   },
      // ),
    );
  }
}
