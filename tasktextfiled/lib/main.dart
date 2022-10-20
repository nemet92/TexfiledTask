import 'package:flutter/material.dart';
import 'package:tasktextfiled/loginPageView.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isThemeLight = false;
  void changeTheme() {
    setState(() {
      isThemeLight = !isThemeLight;
    });
  }

  bool iconBool = false;
  void iconChange() {
    setState(() {
      iconBool = !iconBool;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: isThemeLight ? ThemeData.dark() : ThemeData.light(),
        home: LoginViewPage(
          icon: Icon(iconBool ? Icons.wb_sunny : Icons.nights_stay),
          onPressed: () {
            changeTheme();
            iconChange();
          },
        ));
  }
}
