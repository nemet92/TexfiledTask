import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:tasktextfiled/const/AppColor.dart';
import 'package:tasktextfiled/const/appPath.dart';
import 'package:tasktextfiled/const/appText.dart';
import 'package:tasktextfiled/const/widget/customTextFiled.dart';
import 'package:tasktextfiled/homePage.dart';

class LoginViewPage extends StatefulWidget {
  const LoginViewPage({Key? key, required this.onPressed, required this.icon})
      : super(key: key);
  final Function() onPressed;
  final Icon icon;

  @override
  State<LoginViewPage> createState() => _LoginViewPageState();
}

class _LoginViewPageState extends State<LoginViewPage> {
  final TextEditingController _nameTexteditingController =
      TextEditingController();
  final TextEditingController _lastNameTexteditingController =
      TextEditingController();
  final TextEditingController _passwordTexeditingController =
      TextEditingController();
  final TextEditingController _emailTexeditingController =
      TextEditingController();

  void refreshInfo() {
    setState(() {
      context.navigateToPage(
        HomePage(
            nameInfo: _nameTexteditingController.text,
            lastNameInfo: _lastNameTexteditingController.text,
            emailInfo: _emailTexeditingController.text,
            passwordInfo: int.tryParse(_passwordTexeditingController.text)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: widget.onPressed,
            icon: widget.icon,
            color: Colors.black,
          )
        ],
      ),
      body: Center(
        child: Container(
          decoration:
              const BoxDecoration(color: AppColor.containerColor, boxShadow: [
            BoxShadow(
              color: AppColor.containerShadow,
              blurRadius: 5,
            )
          ]),
          height: context.mediaQuery.size.height * 0.6,
          width: context.mediaQuery.size.width * 0.8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("Şəxsi Məlumatlar",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: Colors.black)),
                  sizedBox(),
                  CustomTextFiled(
                    controller: _nameTexteditingController,
                    hintText: 'AD',
                    suffixIcon: AppPath.nameSuffixIcon,
                  ),
                  sizedBox(),
                  CustomTextFiled(
                    controller: _lastNameTexteditingController,
                    hintText: 'SoyAd',
                    suffixIcon: AppPath.nameSuffixIcon,
                  ),
                  sizedBox(),
                  CustomTextFiled(
                    controller: _passwordTexeditingController,
                    hintText: 'Şifrə',
                    suffixIcon: AppPath.passwordSuffixIcon,
                    textInputType: TextInputType.number,
                  ),
                  sizedBox(),
                  CustomTextFiled(
                    controller: _emailTexeditingController,
                    hintText: 'Email',
                    suffixIcon: AppPath.emailSuffixIcon,
                  ),
                  sizedBox(),
                  SizedBox(
                    height: context.mediaQuery.size.height * 0.05,
                    width: context.mediaQuery.size.width * 0.3,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            refreshInfo();
                          });
                        },
                        icon: AppPath.elvatedButtonIcon,
                        label: AppText.elevatedButtonText),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox sizedBox() {
    return const SizedBox(
      height: 10,
    );
  }
}
