import 'package:flutter/material.dart';
import 'package:i18n_bug/generated/i18n.dart';
import 'package:i18n_bug/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [S.delegate],
      supportedLocales: S.delegate.supportedLocales,
//      localeResolutionCallback: S.delegate.resolution(fallback: Locale('en')), //todo - throws an error if using i18n anywhere
      title: 'Flutter Demo', //todo - doesn't throw error
//      title: S.of(context).app_name, //todo - always throws an error, works fine on deeper widgets
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: "Home Page"), //todo - doesn't throw error
//      home: MyHomePage(title: "Home Page"), //todo always throws an error, works fine on deeper widgets
    );
  }
}
