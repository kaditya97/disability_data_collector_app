import 'package:disability/Screens/add_data.dart';
// import 'package:disability/Screens/add_event.dart';
import 'package:disability/drawer.dart';
import 'package:disability/models/event.dart';
import 'package:disability/services/db_service.dart';
import 'package:disability/utils/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

void main() {
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('ne', 'NP')],
        path: 'assets/translations',
        fallbackLocale: Locale('en', 'US'),
        saveLocale: true,
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => new ThemeData(
        primarySwatch: Colors.blue,
        brightness: brightness,
      ),
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          title: 'Disability',
          theme: theme,
          debugShowCheckedModeBanner: false,
          home: MyHomePage(title: 'Disability'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = Text("Disability(अपाङता)");
  TextEditingController _eventController;
  Map<DateTime, List<dynamic>> _events;
  List<dynamic> _selectedEvents;
  DbService dbService;
  DatabaseHelper databaseHelper;
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
    _eventController = TextEditingController();
    _events = {};
    _selectedEvents = [];
    dbService = DbService();
    databaseHelper = DatabaseHelper();
  }

  Map<DateTime, List<dynamic>> _fromModelToEvent(List<EventModel> events) {
    Map<DateTime, List<dynamic>> data = {};
    List datas = [];
    events.forEach((event) {
      DateTime date = DateTime(
          event.eventDate.year, event.eventDate.month, event.eventDate.day, 12);
      if (data[date] == null) data[date] = [];
      data[date].add(event);
      datas.add(event);
    });
    _selectedEvents = datas;
    return data;
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
    Color _todoColor = Theme.of(context).brightness == Brightness.dark ? Theme.of(context).primaryColor : Colors.teal[300];
    return Scaffold(
      appBar: _buildBar(context),
      drawer: CustomDrawer(),
      body: FutureBuilder<List<EventModel>>(
        // future: dbService.getEvents(),
        future: databaseHelper.getTaskList(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<EventModel> allEvents = snapshot.data;
            if (allEvents.isNotEmpty) {
              _events = _fromModelToEvent(allEvents);
            }
          }
          return SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      'title'.tr(),
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                ..._selectedEvents.map(
                  (event) => Container(
                    margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    decoration: BoxDecoration(
                      color: _todoColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 2.0)
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      onDoubleTap: () {
                        setState(() {
                          _todoColor = Colors.green;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            width: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  event.title,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  event.description,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Text(
                              event.time.format(context),
                              // event.time.toString(),
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
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
}
