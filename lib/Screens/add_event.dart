import 'dart:io';
import 'package:flutter/material.dart';
import 'package:disability/custom_widgets/custom_button.dart';
import 'package:disability/mixins/validation_mixin.dart';
import 'package:disability/models/event.dart';
import 'package:disability/services/db_service.dart';
import 'package:disability/utils/database_helper.dart';
import 'package:image_picker/image_picker.dart';

class AddEvent extends StatefulWidget {
  final EventModel event;

  const AddEvent({this.event});
  @override
  _AddEventState createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> with ValidationMixin {
  DbService dbService;
  DatabaseHelper databaseHelper;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _title;
  TextEditingController _description;
  DateTime _eventDate;
  TimeOfDay _time;
  bool processing;
  String header = "Add New Task";
  String buttonText = "Save";
  bool addNewTask = true;
  File _image;
  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    dbService = DbService();
    databaseHelper = DatabaseHelper();
    _title = TextEditingController();
    _description = TextEditingController();
    _eventDate = DateTime.now();
    _time = TimeOfDay.now();
    if (widget.event != null) {
      populateForm();
    }
    processing = false;
  }

  void populateForm() {
    _title.text = widget.event.title;
    _description.text = widget.event.description;
    _eventDate = widget.event.eventDate;
    _time = widget.event.time;
    header = "Update Task";
    buttonText = "Update";
    addNewTask = false;
    setState(() {});
  }

  Future _getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  void saveTask() async {
    try {
      if (addNewTask) {
        await databaseHelper.addTask(EventModel(
            title: _title.text,
            description: _description.text,
            eventDate: _eventDate,
            time: _time));
      } else {
        await databaseHelper.updateTask(EventModel(
            id: widget.event.id,
            title: _title.text,
            description: _description.text,
            eventDate: _eventDate,
            time: _time));
      }

      setState(() {
        processing = false;
      });
      await _goBack();
    } catch (e) {
      print("Error $e");
    }
  }

  void deleteTask() async {
    try {
      await databaseHelper.deleteTask(widget.event.id);
      setState(() {
        processing = false;
      });
      await _goBack();
    } catch (e) {
      print("Error $e");
    }
  }

  Future<bool> _goBack() async {
    Navigator.of(context).pop(true);
    return false;
  }

  Future<bool> _onBackPressedWithButton() async {
    Navigator.of(context).pop(false);
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressedWithButton,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.bottomLeft,
              height: 80,
              child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    _onBackPressedWithButton();
                  }),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(header,
                    style:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold))),
            Expanded(
              child: Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: TextFormField(
                            controller: _title,
                            validator: validateTextInput,
                            decoration: InputDecoration(
                                labelText: "Title",
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            controller: _description,
                            minLines: 3,
                            maxLines: 5,
                            validator: validateTextInput,
                            decoration: InputDecoration(
                                labelText: "description",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        ListTile(
                          title: Text("Select Date of Task"),
                          subtitle: Text(
                              "${_eventDate.year} - ${_eventDate.month} - ${_eventDate.day}"),
                          onTap: () async {
                            DateTime picked = await showDatePicker(
                                context: context,
                                initialDate: _eventDate,
                                firstDate: DateTime(_eventDate.year - 5),
                                lastDate: DateTime(_eventDate.year + 5));
                            if (picked != null) {
                              setState(() {
                                _eventDate = picked;
                              });
                            }
                          },
                        ),
                        SizedBox(height: 10.0),
                        ListTile(
                          title: Text("Select Time of Task"),
                          subtitle: Text(_time.format(context)),
                          onTap: () async {
                            TimeOfDay picked = await showTimePicker(
                                context: context, initialTime: _time);

                            if (picked != null) {
                              setState(() {
                                _time = picked;
                              });
                            }
                          },
                        ),
                        RaisedButton(
                          onPressed: _getImage,
                          child: Text('Take Picture',
                              style: TextStyle(fontSize: 20)),
                        ),
                        Center(
                          child: _image == null
                              ? Text('No image selected.')
                              : Image.file(_image),
                        ),
                        SizedBox(height: 10.0),
                        processing
                            ? Center(child: CircularProgressIndicator())
                            : Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    CustomButton(
                                        buttonText: buttonText,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        onPressed: () async {
                                          if (_formKey.currentState
                                              .validate()) {
                                            setState(() {
                                              processing = true;
                                            });
                                            saveTask();
                                          }
                                        }),
                                    SizedBox(height: 10.0),
                                    Container(
                                      child: !addNewTask
                                          ? CustomButton(
                                              buttonText: "Delete",
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              buttonColor: Colors.redAccent,
                                              onPressed: () async {
                                                setState(() {
                                                  processing = true;
                                                });
                                                deleteTask();
                                              })
                                          : Container(),
                                    ),
                                  ],
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
