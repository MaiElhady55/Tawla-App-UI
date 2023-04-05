import 'package:flutter/material.dart';
import 'package:tawla_app/config/app_colors.dart';
import 'package:tawla_app/widgets/MainText.dart';

class HeaderScreen extends StatelessWidget {
  final String text;
  final EdgeInsets padding;

  const HeaderScreen({
    Key? key,
    required this.text,
    required this.padding,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.MAIN,
              size: 25,
            )),
        RegisterText(
          text: text,
          padding: padding,
          textColor: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        )
      ],
    );
  }
}
