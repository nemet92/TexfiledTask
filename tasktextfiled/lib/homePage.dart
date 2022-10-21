import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    required this.nameInfo,
    required this.lastNameInfo,
    required this.emailInfo,
    required this.passwordInfo,
  }) : super(key: key);
  final String nameInfo;
  final String lastNameInfo;
  final String emailInfo;
  final int? passwordInfo;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Text(widget.nameInfo);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText("AD"),
            Center(
              child: Container(
                height: 50,
                width: context.mediaQuery.size.height * 0.4,
                color: Theme.of(context).backgroundColor,
                child: Center(child: Text(widget.nameInfo)),
              ),
            ),
            CustomText("SoyAd"),
            Center(
              child: Container(
                height: 50,
                width: context.mediaQuery.size.height * 0.4,
                color: Theme.of(context).backgroundColor,
                child: Center(child: Text(widget.lastNameInfo)),
              ),
            ),
            CustomText("Password"),
            Center(
              child: Container(
                height: 50,
                width: context.mediaQuery.size.height * 0.4,
                color: Theme.of(context).backgroundColor,
                child: Center(child: Text(widget.lastNameInfo)),
              ),
            ),
            CustomText("Email"),
            Center(
              child: Container(
                height: 50,
                width: context.mediaQuery.size.height * 0.4,
                color: Theme.of(context).backgroundColor,
                child: Center(child: Text(widget.emailInfo)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text CustomText(text) => Text(
        text,
        style: TextStyle(color: Theme.of(context).hintColor),
      );
}
