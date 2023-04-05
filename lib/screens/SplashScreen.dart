import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:tawla_app/screens/LoginScreen.dart';
import 'package:tawla_app/screens/ForgotPasswordScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);
  static String routeName='Splash-Screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: EasySplashScreen(
        logo:Image.asset('assets/images/logo.png',fit:BoxFit.cover,),
        backgroundImage: AssetImage('assets/images/background.png'),
        durationInSeconds: 3,
        showLoader: true,
        loaderColor: Color.fromRGBO(67, 84, 160, 1),
        navigator:LogInScreen(),
        logoWidth: 200,
         ),
    );
  }
}