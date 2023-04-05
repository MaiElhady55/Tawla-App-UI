import 'package:flutter/material.dart';
import 'package:tawla_app/routes/AppRoutes.dart';
import 'package:tawla_app/screens/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: getAppRoutes(),
    );
  }
}
