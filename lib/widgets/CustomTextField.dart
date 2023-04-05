import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final Widget? icon;
  final bool? obsecurText;
  final TextInputType textType;
  final EdgeInsets contentPadding;
  final EdgeInsets padding;
  final String hintText;
  final double? height;
  final Icon? prefixIcon;

  const CustomTextField(
      {Key? key,
      this.icon = null,
      this.contentPadding = const EdgeInsets.only(bottom: 12, right: 17),
      this.obsecurText = false,
      required this.hintText,
      this.padding = const EdgeInsets.symmetric(horizontal: 25),
      required this.textType,
      this.height=47,
      this.prefixIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: height,
        child: TextFormField(
          textAlign: TextAlign.right,
          style: TextStyle(
              decorationThickness: 0, decoration: TextDecoration.none),
          textDirection: TextDirection.rtl,
          obscureText: obsecurText!,
          keyboardType: textType,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
            contentPadding: contentPadding,
            hintStyle: TextStyle(
                fontSize: 12,
                fontFamily: 'tajawal',
                color: Color.fromRGBO(96, 96, 96, 0.75),
                fontWeight: FontWeight.normal
                ),
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
