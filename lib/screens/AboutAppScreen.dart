import 'package:flutter/material.dart';
import 'package:tawla_app/widgets/ReadingScreenContent.dart';

class AboutAppScree extends StatelessWidget {
  const AboutAppScree({Key? key}) : super(key: key);
  static String routeName = 'About-App-Screen';

  @override
  Widget build(BuildContext context) {
    return ReadingScreen(title: 'عن التطبيق');
  }
}
