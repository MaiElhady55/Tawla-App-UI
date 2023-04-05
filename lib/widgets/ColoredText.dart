import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/widgets/MainText.dart';

class ColoredText extends StatelessWidget {
  final String text;
  final double fontSize;
  final EdgeInsets PaddingTextOne;
  final EdgeInsets PaddingTextTwo;

  const ColoredText(
      {Key? key,
      required this.text,
      required this.PaddingTextTwo,
      required this.PaddingTextOne,
      required this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      textBaseline: TextBaseline.alphabetic,
      children: [
        RegisterText(
          text: text,
          padding:PaddingTextOne,
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          textColor: AppColors.Secondry,
        ),
        RegisterText(
          text: 'ريال',
          padding: PaddingTextTwo,
          fontWeight: FontWeight.bold,
          textColor: AppColors.Secondry,
        ),
      ],
    );
  }
}
