import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatelessWidget {
  final Widget? icon;
  final bool? obsecurText;
  final TextInputType textType;
  final EdgeInsets contentPadding;
  final EdgeInsets padding;
  final String hintText;
  final double height;
  final TextEditingController controller;

  const CustomTextField(
      {Key? key,
      this.icon = null,
      this.contentPadding = const EdgeInsets.only(bottom: 12, right: 17),
      this.obsecurText = false,
      required this.hintText,
      required this.controller,
      this.padding = const EdgeInsets.symmetric(horizontal: 25),
      required this.textType})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: height,
        child: TextFormField(
          textAlign: TextAlign.left,
          style: TextStyle(
              decorationThickness: 0, decoration: TextDecoration.none),
          textDirection: TextDirection.ltr,
          obscureText: obsecurText!,
          keyboardType: textType,
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: hintText,
              contentPadding: contentPadding,
              hintStyle: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  color: AppColors.kTitleColor,
                  fontWeight: FontWeight.w400),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none),
              suffixIcon: icon,
          ),
        ),
      ),
    );
  }
}
