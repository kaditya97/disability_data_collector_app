import 'package:disability/databasebase/database.dart';
import 'package:disability/homepage.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    Provider<MyDatabase>(
      create: (context) => MyDatabase(),
      child: EasyLocalization(
          supportedLocales: [Locale('en', 'US'), Locale('ne', 'NP')],
          path: 'assets/translations',
          fallbackLocale: Locale('en', 'US'),
          saveLocale: true,
          child: MyApp()),
      dispose: (context, db) => db.close(),
    ),
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
