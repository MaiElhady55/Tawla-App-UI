import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback? function;
  final double height;
  final double padding;
  final double fontSize;
  final Color color;
  final Color textColor;
  MainButton(
      {required this.text,
      required this.function,
      this.height = 48,
      this.textColor=Colors.white,
      this.fontSize = 15,
      this.color = const Color.fromRGBO(67, 84, 160, 1),
      this.padding = 25});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: GestureDetector(
        onTap: function,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: height,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: AppColors.MAIN)),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: textColor,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'tajawal'),
            ),
          ),
        ),
      ),
    );
  }
}
