import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class MySetting extends StatefulWidget {
  @override
  _MySettingState createState() => _MySettingState();
}

class _MySettingState extends State<MySetting> {
  Future _showLanguage(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("language".tr()),
          content: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text(
                  "English",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  setState(() {
                    EasyLocalization.of(context).locale = Locale("en", "US");
                    Navigator.of(context).pop();
                  });
                },
              ),
              ListTile(
                title: Text(
                  "नेपाली",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  setState(() {
                    EasyLocalization.of(context).locale = Locale("ne", "NP");
                    Navigator.of(context).pop();
                  });
                },
              ),
            ],
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("close".tr()),
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
    return Scaffold(
      appBar: AppBar(
        title: Text("setting".tr()),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.language, color: Colors.blue),
              title: Text(
                "selectLanguage".tr(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () async {
                await _showLanguage(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
