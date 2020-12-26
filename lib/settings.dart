import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:dynamic_theme/theme_switcher_widgets.dart';
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

  void _showChooser() {
    showDialog<void>(
        context: context,
        builder: (context) {
          return BrightnessSwitcherDialog(
            onSelectedTheme: (brightness) {
              DynamicTheme.of(context).setBrightness(brightness);
              Navigator.of(context).pop();
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    Color _fillColor = Theme.of(context).brightness == Brightness.dark ? Colors.white70 : Colors.blue;
    return Scaffold(
      appBar: AppBar(
        title: Text("setting".tr()),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.language, color: _fillColor),
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
            ListTile(
              leading: Icon(Icons.add_to_home_screen, color: _fillColor),
              title: Text(
                "selectTheme".tr(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                _showChooser();
              },
            ),
          ],
        ),
      ),
    );
  }
}
