import 'package:flutter/material.dart';
import 'package:tawla_app/widgets/ReadingScreenContent.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({Key? key}) : super(key: key);
  static String routeName = 'Terms-Conditions-Screen';

  @override
  Widget build(BuildContext context) {
    return ReadingScreen(title: 'الشروط و الاحكام',padding: 55,);
  }
}