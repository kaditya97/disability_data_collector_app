import 'package:disability/Screens/add_event.dart';
import 'package:disability/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Disability'),
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
  Widget _appBarTitle = new Text('Disability');

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

  _awaitReturnValueFromAddEvent() async {
    await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AddEvent(),
        ));

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildBar(context),
      drawer: CustomDrawer(),
      body: Center(
        child: Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _awaitReturnValueFromAddEvent();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
