import 'package:flutter/material.dart';

class RegisterText extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry padding;
  final FontWeight fontWeight;
  final Color textColor;
  final MainAxisAlignment mainAxisAlignment;
  final double? fontSize;
  final double? height;
  final TextAlign textAlign;

  const RegisterText(
      {Key? key,
      required this.text,
      this.padding = const EdgeInsets.only(bottom: 6, right: 40),
      this.fontWeight = FontWeight.w500,
      this.textColor = const Color.fromRGBO(96, 96, 96, 1),
      this.height,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.fontSize = 12,
      this.textAlign = TextAlign.right})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Padding(
          padding: padding,
          child: Text(
            text,
            textAlign: textAlign,
            textDirection: TextDirection.rtl,
            style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                height: height,
                fontWeight: fontWeight,
                fontFamily: 'tajawal'),
          ),
        ),
      ],
    );
    
  }
}
