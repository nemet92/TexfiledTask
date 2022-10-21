import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    required this.hintText,
    required this.controller,
    required this.suffixIcon,
    this.prefixIcon,
    this.textInputType,
    //  this.hintTextStyle,
    Key? key,
  }) : super(key: key);
  final String hintText;
  final TextEditingController controller;
  final Icon suffixIcon;
  final Icon? prefixIcon;
  final TextInputType? textInputType;

  // final TextStyle hintTextStyle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      style: const TextStyle(color: Colors.black),
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          // suffixIconColor: Theme.of(context).disabledColor,
          hintStyle: const TextStyle(color: Colors.black),
          enabledBorder: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(),
          disabledBorder: const OutlineInputBorder()),
    );
  }
}
