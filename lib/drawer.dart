import 'package:disability/database/database.dart';
import 'package:disability/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'map/map.dart';

class CustomDrawer extends StatelessWidget {

  Future<void> _launch(String url) async {
    if(await canLaunch(url)){
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key':'my_header_value'},
      );
    }
  }
  Future<void> _launchEmail(String url) async {
    if (await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not Launch $url';
    }
  }

  Future _showDialog(BuildContext context) async {
    // flutter defined function
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Developer"),
          content: new Text("Aditya Kushwaha"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future _showSetting(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Setting"),
          content: new Text("Coming Soon...."),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                    child: Text(
                  "Disability",
                  style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                )),
              ),
              ListTile(
                leading: Icon(Icons.home,color: Colors.blue,),
                title: Text("Home", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyApp()));},
              ),
              ListTile(
                leading: Icon(Icons.storage,color: Colors.blue,),
                title: Text("Database", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Mydatabase()));},
              ),
              ListTile(
                leading: Icon(Icons.map,color: Colors.blue,),
                title: Text("Map", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Mymap()));},
              ),
              ListTile(
                leading: Icon(Icons.clear_all,color: Colors.blue),
                title: Text("About", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                 onTap: () async {
                   await _showDialog(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings,color: Colors.blue),
                title: Text("Settings", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                onTap: () async {
                   await _showSetting(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.email,
                color: Colors.blue),
                title: Text("Feedback", style:  TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                onTap: () => _launchEmail('mailto:cssgs@wrc.edu.np?subject=Disability%20app%20feedback&body=Suggestion'),
                trailing: Icon(Icons.open_in_new,
                color: Colors.blue),
              ),
            ],
          ),
    );
  }
}
