import 'package:disability/databasebase/database.dart';
import 'package:disability/main.dart';
import 'package:disability/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moor_db_viewer/moor_db_viewer.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:easy_localization/easy_localization.dart';

// import 'databasebase/database.dart';
import 'map/map.dart';

class CustomDrawer extends StatelessWidget {
  // Future<void> _launch(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(
  //       url,
  //       forceSafariVC: false,
  //       forceWebView: false,
  //       headers: <String, String>{'my_header_key': 'my_header_value'},
  //     );
  //   }
  // }

  Future<void> _launchEmail(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
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

  @override
  Widget build(BuildContext context) {
    final db = Provider.of<MyDatabase>(context);
    Color _fillColor = Theme.of(context).brightness == Brightness.dark ? Colors.white70 : Colors.blue;
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Center(
                child: Text(
              "title".tr(),
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: _fillColor,
              ),
            )),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: _fillColor,
            ),
            title: Text(
              "home".tr(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.storage,
              color: _fillColor,
            ),
            title: Text(
              "database".tr(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MoorDbViewer(db)));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.map,
              color: _fillColor,
            ),
            title: Text(
              "map".tr(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Mymap()));
            },
          ),
          ListTile(
            leading: Icon(Icons.clear_all, color: _fillColor),
            title: Text(
              "about".tr(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () async {
              await _showDialog(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: _fillColor),
            title: Text(
              "setting".tr(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MySetting()));
            },
          ),
          ListTile(
            leading: Icon(Icons.email, color: _fillColor),
            title: Text(
              "feedback".tr(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () => _launchEmail(
                'mailto:cssgs@wrc.edu.np?subject=Disability%20app%20feedback&body=Suggestion'),
            trailing: Icon(Icons.open_in_new, color: _fillColor),
          ),
        ],
      ),
    );
  }
}
