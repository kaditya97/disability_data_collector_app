import 'package:disability/databasebase/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewTaskInput extends StatefulWidget {
  const NewTaskInput({
    Key key,
  }) : super(key: key);

  @override
  _NewTaskInputState createState() => _NewTaskInputState();
}

class _NewTaskInputState extends State<NewTaskInput> {
  DateTime newTaskDate;
  TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          _buildTextField(context),
          _buildDateButton(context),
        ],
      ),
    );
  }

  Expanded _buildTextField(BuildContext context) {
    final database = Provider.of<MyDatabase>(context);
    return Expanded(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(hintText: 'Task Name'),
        onSubmitted: (inputName) {
          // ignore: missing_required_param
          final task = Task(
            name: inputName,
            dueDate: newTaskDate,
            completed: true
          );
          database.insertTask(task);
          resetValuesAfterSubmit();
        },
      ),
    );
  }

  IconButton _buildDateButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.calendar_today),
      onPressed: () async {
        newTaskDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2010),
          lastDate: DateTime(2050),
        );
      },
    );
  }

  void resetValuesAfterSubmit() {
    setState(() {
      newTaskDate = null;
      controller.clear();
    });
  }
}
